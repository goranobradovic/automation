#!/bin/bash
set -x
cd source/reponame
git pull https://username:pass@github.com/username/reponame
cd wwwrootfolder
npm install
au build --env prod
sudo cp dist/* /var/www/
