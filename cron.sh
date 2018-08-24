#!/bin/bash

DATE=`date`
TEXT=`curl https://v1.hitokoto.cn |grep hitokot |cut -d'"' -f4`

cd /data/www/resume/

echo $TEXT >> text.log

git add --all

git commit -m "$TEXT"

git push origin master

git push coding master

curl https://sc.ftqq.com/SCU10625Td571049c53dd2e36148f1343a18544ef59855df9df77c.send?text="$TEXT"
