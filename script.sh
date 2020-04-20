#!/bin/sh

JAR=server.jar
echo '------------------'
echo 'Starting server...'
echo '------------------'

while [ true ]; do
  java -Xmx1g -server -jar $JAR nogui
  if [ $? -eq 0 ]; then
    break
  fi
  echo 'Debug'
done
echo '----------------------'
echo 'Server closed. Saving!'
echo '----------------------'
sh ./save.sh


echo '----------------'
echo "Press Q to quit"
echo '----------------'
while true; do
    read -t 0.25 -N 1 input
    if [[ $input = "q" ]] || [[ $input = "Q" ]]; then
        break 
    fi
done