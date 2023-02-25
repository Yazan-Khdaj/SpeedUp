#!/usr/bin/bash

Path=~/Desktop/Work/$1

mkdir -p $Path/{styles,scripts,access/{images,icon,fonts}}

cp ~/Templates/index.html $Path
cp ~/Templates/normalize.css $Path/styles

touch $Path/styles/style.css
touch $Path/scripts/script.js

echo "# "$2 > $Path/README.md

cd $Path

git init
git add .
git commit -m "Create"
git branch -M main

if [[ $3 != "" ]]
then
 git remote add origin https://github.com/Yazan-Khdaj/$3.git
fi

echo "Evrey Thing Is Done"
