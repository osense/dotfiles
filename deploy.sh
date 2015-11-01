#!/usr/bin/env bash

echo
echo "CAUTION: This may overwrite existing configuration files."
echo
read -p "Press ^C to abort or Enter to continue... "

for file in $(find -type f ! -iname 'deploy.sh' ! -iwholename './.git*')
do
    rm ~/$file
    ln -s $(pwd)/$file ~/$file
done;
