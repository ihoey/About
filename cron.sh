#!/bin/bash

DATE=`date`

cd /data/www/resume/

echo "_______" >> temp.txt

git add --all

git commit -m "$DATE"

git push origin master

git push coding master

curl https://sc.ftqq.com/SCU10625Td571049c53dd2e36148f1343a18544ef59855df9df77c.send?text=about更新完成~
