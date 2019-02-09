#!/bin/bash

GIT_DIR=$1

(cd $GIT_DIR && git fsck --lost-found) 2> /dev/null

if [ $? -eq 1 ]; then
	echo -e "\e[31mERROR: \e[0m Bad repository URL path" ; exit
fi

IT=0
HEADS=`find $GIT_DIR.git/lost-found/commit -type f -exec basename {} \; 2> /dev/null`

if [ $? -eq 1 ]; then
	echo -e "\e[31mERROR: \e[0m No lost branches in given repository" ; exit
fi

for COMMIT in $HEADS
do
	(cd $GIT_DIR &&  git branch -f "recovery$IT" $COMMIT)
	IT=$(($IT+1))
done
