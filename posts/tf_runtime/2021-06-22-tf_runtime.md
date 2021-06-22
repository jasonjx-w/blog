---
title:     Tensorflow Runtime 简介
date:      2021-06-22
tags:
- "tf"
menu:
  main:
    parent:  ""
weight: 10
---

# `Tensorflow Runtime` 简介

原生的 `tf` 执行流为 `pythor api` -> `GraphDef` -> 执行 `OpNode`.

使用 `Runtime` 后执行流为 `python api` -> `GraphDef` -> `compile ir` -> `BEF(binary execute format)` -> `execute`
