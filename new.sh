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
  echo "[ERROR] Found $FILE already!"
  exit 1
fi

cat > $FILE <<EOF
---
author:    ""
date:      $DATE
title:     $TITLE
linktitle: $TITLE
menu:
  main:
    parent:  ""
next:
prew:
weight: 10
---


EOF

# create folder
if [ -d $TITLE ]; then
  echo "[ERROR] Found dir $TITLE already!"
  exit 1
else
  mkdir $TITLE
fi

mv $TITLE $DST
mv $FILE $DST/$TITLE/

# print log
echo "[INFO] Create new file successfully."
echo "[INFO] vim $DST/$TITLE/$FILE"
