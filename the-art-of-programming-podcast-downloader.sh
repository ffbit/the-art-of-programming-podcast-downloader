#!/bin/bash

url=http://taop.rpod.ru/rss.xml

for line in $(curl $url | grep -o "http://.*mp3")
do
  encoded_name=`urlencode -d $line | grep -o -P "(?<=/)[^/]*.mp3$"`
  wget -O "$encoded_name" -c $line
done
