#!/bin/bash

#What to download
URL1="https://FULL_URL_TO DOWNLOAD_FILE/one.json"
URL2="https://FULL_URL_TO DOWNLOAD_FILE/two.txt"

#Remove all from files folder
rm -rf ./files/*

#Download files from URLS
wget -P ./files/ -i - << EOF
${URL1}
${URL2}
EOF