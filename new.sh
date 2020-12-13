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
layout:      article   # 指定使用的模板文件，“_layout” 目录下的模板文件名决定变量名
title:       $TITLE
date:        $DATE
category:    blog   # 文章的类别
description: description
published:   true   # default true 设置 “false” 后，文章不会显示
permalink:   /:categories/:year/:month/:day/:title.html  # 覆盖全局变量设定的文章发布格式
---
EOF

cd -

mv $TITLE $DST

echo "[INFO] Create new file successfully."
echo "[INFO] vim $DST/$TITLE/$FILE"
