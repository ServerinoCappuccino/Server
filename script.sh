#!/bin/sh

JAR=server.jar

while [ true ]; do
  java -Xmx1g -server -jar $JAR nogui
  if [ $? -eq 0 ]; then
    break
  fi
done