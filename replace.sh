#! /bin/bash

# Develop a Shell Script that takes a text file and replaces all occurences of a specific word or phrase 
# with another word or phrase


read -p "Enter the File Name : " file

read -p "Enter the word to replace : " oldword

read -p "Enter the word the word to replace : " newword

echo $oldword

echo $newword

echo "sed 's/$oldword/$newword/g' $file"

echo "Original Content"

cat $file

echo "Now I am Replacing $oldword with $newword"

sed 's/$oldword/$newword/g' $file