# blog


# CHANGELOG

[2020-10-17]:
* 将github.io作为子仓放在本仓内.
* 在配置workflow时发现在github runner上无法配置github.io的sshkey.
* pull或push需要sshkey, 且github.io的key必须与本仓key不一样.
* 因此, 或者将key放在本仓作为文件;或者将github.io作为子仓公用sshkey. 
