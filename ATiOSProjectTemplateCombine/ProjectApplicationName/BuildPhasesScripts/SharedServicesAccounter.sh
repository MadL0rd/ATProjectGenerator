#!/bin/bash

colorPrint() {
  text=$1
  printf "%b" "\e[1;34m${text}\e[0m"
}

errorColorPrint() {
  text=$1
  printf "%b" "\e[1;91m${text}\e[0m"
}

printToFile() {
    text=$1
    echo "$text" >&2
}



protocolName="SharedService"
colorPrint "\n\t$protocolName search:"

if [ "$protocolName" == "" ]
then
    errorColorPrint "Needs protocol name to find! Exit...\n"
    exit
fi

declarationStringsWithProtocolName=$(find . -name '*.swift' -exec awk '(/class/ || /extension/) && /'"$protocolName"'/' {} \;)

classNamesArray=()
nextClassName=false

for string in $(echo $declarationStringsWithProtocolName | tr ":" "\n")
do
    if [ "$nextClassName" == true ]
    then
        classNamesArray+=("$string")
        colorPrint "\nFound class:   $string"
        nextClassName=false
    else
        if [ "$string" == "class" ] || [ "$string" == "extension" ]
        then
            nextClassName=true
        fi
    fi
done


exec 2>AutoGeneratedFiles/ServicesSingletoneAccounter.swift
printToFile "//
// Auto generated file
//

class ServicesSingletoneAccounter {
"
len=${#classNamesArray[@]}
for (( i=0; i<$len; i++ ))
do
    currentClassName="${classNamesArray[$i]}"
    currentClassNamePropertyName="$(tr '[:upper:]' '[:lower:]' <<< ${currentClassName:0:1})${currentClassName:1}"
    printToFile "    static let $currentClassNamePropertyName: ${currentClassName}Protocol = $currentClassName()"
done
printToFile "
 }"
