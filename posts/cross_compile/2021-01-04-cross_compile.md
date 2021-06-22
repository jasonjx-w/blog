---
layout:      article   # 指定使用的模板文件，“_layout” 目录下的模板文件名决定变量名
title:       OpenCL笔记总结
date:        2020-10-20
category:    blog   # 文章的类别
description: description
published:   true   # default true 设置 “false” 后，文章不会显示
permalink:   /:categories/:year/:month/:day/:title.html  # 覆盖全局变量设定的文章发布格式
---

# protobuf
./configure \
--host="arm-linux" \
CC="${toolchians/gcc}" \
CXX="${toolchians/gcc}" \
--prefix="${output_path}" \
--with_protoc="${x86_protoc}"

make && make install

# libxml2
./configure \
--host="arm-linux" \
CC="${toolchians/gcc}" \
CXX="${toolchians/gcc}" \
--prefix="${output_path}" \
--without_python

*无需python使用--without_python*
*需要python使用--with_python=${x86_python}*

# python2.7
1. 先编译host端解释器
./configure
make python Parser/pgen
mv python hostpython
mv Parser/pgen Parser/hostpgen
make distclean

2. configure
./configue \
--prefix="xxx" \
--host=aarch64-linux-gnu \
--build=x86_64-linux-gnu \
--enable-ipv6 \
--enable-shared \
ac_cv_file__dev_ptmx="yes" \
ac_cv_file__dev_ptc="no" \

3. make

make HOSTPYTHON=hostpython HOSTPGEN=Parser/hostpgen BLDSHARED="${arm_gcc} -shared" CROSS_COMPILE=aarch64-linux-gnu- CROSS_COMPILE_TARGET=yes HOSTARCH=aarch64-linux-gnu BUILDARCH=x86_64-linux-gnu -j32


4. make install

make HOSTPYTHON=hostpython BLDSHARED="${arm_gcc} -shared" CROSS_COMPILE=aarch64-linux-gnu- CROSS_COMPILE_TARGET=yes prefix=${xxx}



