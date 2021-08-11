#!/bin/bash

# Functions

colorPrint() {
  text=$1
  printf "%b" "\e[1;34m${text}\e[0m"
}

errorColorPrint() {
  text=$1
  printf "%b" "\e[1;91m${text}\e[0m"
}

replaceInFiles() {
    textToFind=$1
    textToPut=$2
    dir=$3

    for file in $(grep -Ril "$textToFind" $dir)
    do
        if [ -f "$file" ] && [[ "$file" != Files/Pods* ]]
        then
            sed -i '' "s+$textToFind+$textToPut+g" "$file"
        fi
    done
}

# Code segment

templateFolder="$1"
startTargetFolder="$2"
projectName="$3"
author="$4"

colorPrint "\n"

while [ -z "$templateFolder" ]
do
    colorPrint "Enter path to template folder: "
    read templateFolder
done

if [ -d "$templateFolder" ]
then

    while [ -z "$startTargetFolder" ]
    do
        colorPrint "Enter path to target folder: "
        read startTargetFolder
    done

    while [ -z "$projectName" ]
    do
        colorPrint "Enter project name: "
        read projectName
    done

    while [ -z "$author" ]
    do
        colorPrint "Enter the author name: "
        read author
    done

    colorPrint "\n"

    # Copy template to target folder
    colorPrint "Copy resources\n"

    targetFolder="$startTargetFolder/$projectName"
    cp -a "$templateFolder" "$targetFolder"
    if [ $? -ne 0 ]
    then
        errorColorPrint "\n\t\tError! Failed to copy template folder\n"
    else

        # Rename subdirectories and files containing the project name
        colorPrint "Setting project directories names\n"

        for depth in {0..50}
        do
            for dir in $(find $targetFolder -mindepth $depth -maxdepth $depth)
            do
                newDirName="$(echo "${dir//ApplicationName/$projectName}")"
                if [ "$dir" != "$newDirName" ] && [[ "$dir" != Files/Pods* ]]
                then
                    mv "$dir" "$newDirName"
                fi
            done
        done

        # Replacing all occurrences of one string with another in all files in the project directory
        colorPrint "Files content configuration\n"

        replaceInFiles "ApplicationName" "$projectName" "$targetFolder"

        projectNameLower="$(echo "$projectName" | tr '[:upper:]' '[:lower:]')"
        replaceInFiles "applicationname" "$projectNameLower" "$targetFolder"

        # Remove Pods folder to avoid comments replacing in pods
        rm -r "$targetFolder/Pods"
        for dir in $(find $targetFolder -maxdepth 50 -name 'Pods')
        do
            rm -rf "$dir"
        done

        # Replce all author comments 
        date=$(date '+%d.%m.%y')
        replaceInFiles ".*Created by.*" "//  Created by $author on $date." "$targetFolder"

        # Install pods
        colorPrint "Pods installation\n"

        for dir in $(find $targetFolder -maxdepth 50 -name 'Podfile')
        do
            rootProjectDir="$(echo "${dir//Podfile/}")"
            cd $rootProjectDir
            pod install
        done

        colorPrint "\n\t🎉\tProject was successfully generated!\t🎉\n"
        open $targetFolder
    fi
else
    errorColorPrint "Could not find project template by dir $templateFolder"
fi

colorPrint "\n"
