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
pushd $DST

  ## create folder
  if [ -d $TITLE ]; then
    echo "[ERROR] Found dir $TITLE already exists!"
    exit 1
  fi

  mkdir $TITLE
  pushd $TITLE
    mkdir $DATE-$TITLE
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

  popd  # TITLE
popd  # DST


# print log
echo "[INFO] Create new file successfully."
echo "[INFO] vim $DST/$TITLE/$FILE"
