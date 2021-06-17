#!/bin/bash

if [ $# != 1 ]; then
  echo "Usage:"
  echo "  $0 article_name"
  exit 1
fi

DST=./content
TITLE=$1
DATE=$(date +%Y-%m-%d)
FILE=$DATE-$TITLE.md

# mkdir title name dir
if [ -d $TITLE ]; then
  echo "[ERROR] Found dir $TITLE already!"
  exit 1
fi

mkdir $TITLE

cd $TITLE
# mkdir dir for assets
mkdir assets

# new file
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

cd -

mv $TITLE $DST

echo "[INFO] Create new file successfully."
echo "[INFO] vim $DST/$TITLE/$FILE"
