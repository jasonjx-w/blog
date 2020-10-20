# blog

* content中存放blog内容文件
* ref存放参考资料
* 其他文件放在.路径下

# CHANGELOG

[2020-10-18]:
* push子仓时也需要权限
* 想来也符合逻辑, 要么就使用全局的key放在setting中, 要么就使用本仓的key放在deploy key中.
* workflow中只能deploykey, 也就无法push子仓了.
* github.io 改为按时更新, 将blog作为子仓.

[2020-10-17]:
* 将github.io作为子仓放在本仓内.
* 在配置workflow时发现在github runner上无法配置github.io的sshkey.
* pull或push需要sshkey, 且github.io的key必须与本仓key不一样.
* 因此, 或者将key放在本仓作为文件;或者将github.io作为子仓公用sshkey. 
