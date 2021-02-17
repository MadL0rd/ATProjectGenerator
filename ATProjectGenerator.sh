#!/bin/bash

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
            sed -i '' "s/$textToFind/$textToPut/g" "$file"
        fi
    done
}

templateFolder="$1"
targetFolder="$2"
projectName="$3"
author="$4"

colorPrint "\n"
if [ -d "$templateFolder" ]
then
    # Copy template to target folder
    colorPrint "Copy resources\n"

    targetFolder="$targetFolder/$projectName"
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
                newDirName="$(echo "${dir//Uapp/$projectName}")"
                if [ "$dir" != "$newDirName" ] && [[ "$dir" != Files/Pods* ]]
                then
                    mv "$dir" "$newDirName"
                fi
            done
        done

        # Replacing all occurrences of one string with another in all files in the project directory
        colorPrint "Files content configuration\n"

        replaceInFiles "Uapp" "$projectName" "$targetFolder"

        projectNameLower="$(echo "$projectName" | tr '[:upper:]' '[:lower:]')"
        replaceInFiles "uapp" "$projectNameLower" "$targetFolder"

        replaceInFiles "<#author#>" "$author" "$targetFolder"

        date=$(date '+%d.%m.%y')
        replaceInFiles "<#date#>" "$date" "$targetFolder"

        # Install pods
        colorPrint "Pods installation\n"

        for dir in $(find $targetFolder -maxdepth 50 -name 'Podfile')
        do
            rootProjectDir="$(echo "${dir//Podfile/}")"
            cd $rootProjectDir
            pod install
        done


        colorPrint "\n\t🎉\tProject was successfully generated!\t🎉\n"
    fi
else
    errorColorPrint "Could not find project template by dir $templateFolder"
fi

colorPrint "\n"