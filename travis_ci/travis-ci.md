
# ci
ci(Continuous Integration)即连续部署, 使用小步快走的方式, 保证软件工程的健康.

ci大体要经过building testing deploying, 其中每一步都成功即为passed, 否则为broken. 

# travis ci
## 核心概念
* build, 由多个顺序执行jobs组成.
* stage, 多个并行执行的jobs组成.
* job, 一系列操作组成, 如拉代码, 编译, 执行测试等.
* phase, job中某些顺序执行的操作, 如install-phase script-phase. 

## phase
* install
* script
* before_isntall
* after_install
* ...

## broken的构建
* errored, before-install, install, before—script返回非零值, job立即终止.
* failed, script中返回非零值, job继续执行
* canceled, job被用户取消.

## git 操作
参考: https://docs.travis-ci.com/user/customizing-the-build/
```
git:
  depth: 3/false
  quiet: true
  submodules: false
  ...
```

## Matrix

