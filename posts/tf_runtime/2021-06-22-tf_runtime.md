---
author:    ""
date:      2021-06-22
title:     Tensorflow Runtime 简介
linktitle: tf_runtime
menu:
  main:
    parent:  ""
next:
prew:
weight: 10
---

# `Tensorflow Runtime` 简介

原生的 `tf` 执行流为 `pythor api` -> `GraphDef` -> 执行 `OpNode`.

使用 `Runtime` 后执行流为 `python api` -> `GraphDef` -> `compile ir` -> `BEF(binary execute format)` -> `execute`
