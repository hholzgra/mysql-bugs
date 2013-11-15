#!/bin/sh

if test 1000 -lt $1
then
  if test -d bug$1
  then
    echo "Test case for bug #$1 already exists"
  else
    mkdir bug$1
    for file in template/*
    do
      sed -e"s/XXXXX/$1/g" < $file > bug$1/`basename $file`
    done
    cd bug$1
    mv bugXXXXX.test bug$1.test
    ${EDITOR:-vi} bug$1.test
  fi
else
  echo "Usage: $0 bug_number"
fi
