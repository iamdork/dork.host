#!/usr/bin/env bash
if test "$#" -ne 3; then
  echo "Usage: dork-clone [repository-url] [branch] [destination]"
  exit
fi

if [ ! -d $3 ]
then
  git clone --branch $2 $1 $3
fi
cd $3
git pull origin $2
dork update
