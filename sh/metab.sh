#!/bin/bash

if [ `git branch --show-current` = "develop" ]
then
	echo "Proceeding after confirming develop as current"
else 
	echo "Current branch is not develop"
	exit 1;
fi

git checkout develop
git pull

bash ./b0.sh
bash ./b1.sh
bash ./b2.sh
bash ./sync.sh
