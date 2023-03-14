#!/bin/bash
#What to download and copy
URL1="https://FULL_URL_TO DOWNLOAD_FILE/one.json"
URL2="https://FULL_URL_TO DOWNLOAD_FILE/two.txt"
#Destination path
DEST1="FULL_PATH_TO_/project1/files"
DEST2="FULL_PATH_TO_/project2/files"
#Remove all from files folder
rm -rf ./files/*
#Download files from URLS
wget -P ./files/ -i - << EOF
${URL1}
${URL2}
EOF
#Copying downloaded files in destination folders
cd ./files/
for i in *
do
cp $i $DEST1/$i
done
for i in *
do
cp $i $DEST2/$i
done


