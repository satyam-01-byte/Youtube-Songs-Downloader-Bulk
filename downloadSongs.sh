#!/bin/bash
mkdir temp && cd temp
file="../songlist.txt"
while read -r line
do
  echo -e "\nDownloading: $line\n"
  
  printf "\n###############\n"
  printf "# PLEASE WAIT #\n"
  printf "###############\n"

  youtube-dl -x --audio-format mp3 ytsearch1:"$line song"
  
  mv *.mp3 ~/Music

  printf "\n############################\n"
  printf "Song downloaded successfully\n"
  printf "############################\n"
done < $file
cd ../ && rm -rf temp
