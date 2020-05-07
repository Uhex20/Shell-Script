#!/bin/bash

baseName=$1
fileExtension=$2

counter=1
for i in *.*; do
   renameArg=$(printf "$baseName%03d.$fileExtension" "$counter") #03 pad to length of 3
    mv -i -- "$i" "$renameArg"
    counter=$((counter+1))
done

#USAGE:
#...$ sh rename_renumber.sh filename ExtensionName


