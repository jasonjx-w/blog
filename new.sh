#!/bin/bash


# usage
if [ $# != 1 ]; then
  echo "Usage:"
  echo "  $0 article_name"
  exit 1
fi


# env
DST=./posts
TITLE=$1
DATE=$(date +%Y-%m-%d)
FILE=$DATE-$TITLE.md


# deploy file

## create file
if [ -f $FILE ]; then
  echo "[ERROR] Found $FILE already exists!"
  exit 1
fi

cat > $FILE <<EOF
---
title:     $TITLE
date:      $DATE
desciption: ""
categories:
- ""
- ""
tags:
- ""
- ""
menu:
  main:
    parent:  ""
weight: 10
---


EOF


# create folder
pushd $DST
  if [ -d $TITLE ]; then
    echo "[ERROR] Found dir $TITLE already exists!"
    exit 1
  fi
popd

mkdir $TITLE
mv $FILE $TITLE/
mv $TITLE $DST/

# print log
echo "[INFO] Create new file successfully."
echo "[INFO] vim $DST/$TITLE/$FILE"
