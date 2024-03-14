#!/bin/bash

DATE=`date`
TEXT=$(curl https://v1.hitokoto.cn | jq -r ".hitokoto")

cd /data/www/resume/

echo $TEXT >> text.log

echo $TEXT

git add --all

git commit -m "$TEXT"

git pull origin master

git push origin master

#git push coding master

curl https://sc.ftqq.com/SCT106175TfTMJN6BtvfkOSiGkMaGKigV6.send?text="$TEXT"

# node ./index.js
