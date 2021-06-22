#!/bin/bash

# usage
if [ $# != 1 ]; then
  echo "Usage:"
  echo "  $0 article_name"
  exit 1
fi

# env
DST=./content
TITLE=$1
DATE=$(date +%Y-%m-%d)
FILE=$DATE-$TITLE.md


# create file
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

# deploy file
mv $FILE $DST

# log
echo "[INFO] Create new file successfully."
echo "[INFO] vim $DST/$FILE"
