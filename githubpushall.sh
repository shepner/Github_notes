#!/bin/sh

#This is a horribly dumb little script which will walk a dir tree and commit any changes back to github.
#It makes all sorts of assumptions

DIRLIST=`find * -d 0 -type d`
STARTDIR=$PWD

for i in "${DIRLIST[@]}"
do
  echo "$i"
 
  cd $i

  git pull
  git status
  git add -A
  git status
  git commit -m "change reason here"
  git push

  cd $STARTDIR
done
