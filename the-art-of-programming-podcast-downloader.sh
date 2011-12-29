#!/bin/bash

url=http://taop.rpod.ru/rss.xml

for line in $(curl $url | grep -o "http://.*mp3")
do
  wget `urlencode -d $line`
done
