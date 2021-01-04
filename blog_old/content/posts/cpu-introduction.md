+++
title = "微处理器总结"
date = 2018-12-25
tags = [
    "hardware",
    "cpu"
]

+++




两大架构
========

-   复杂指令集计算机(CISC,Complex Instruction Set Computer)

-   精简指令集计算机(RISC,Reduced Instruction Set Computer)

**复杂指令集计算机**目前主要是指x86系列处理器。x86系列最早是由intel
首先制造出品，从8086开始，后续有80286，80386，80486等产品，到80586开始改名为Pentium。目前主要的x86处理器生产商有AMD，Intel
等。

**精简指令集计算机**,起源于MIPS（Microprocessor without interlocked piped
stages）机。目前采用RISC架构的有ARM，MIPS，
PowerPC等处理器，但考虑到目前市场占有率，精简指令集计算机主要指ARM(Advanced
RISC Machine)架构，即改进RISC 机。目前所有ARM
架构处理器，生产许可权均属于ARM公司，而制造厂有诸如高通，三星，麒麟，台积电等。

<!--more-->

x86架构和Atom
=============

**Intel公司**由格鲁夫，诺伊斯和摩尔三个人创立于1968年。第一枚微处理器叫做Intel
4004(1971年)，4位，0.06MIPS(每秒钟6万条指令)，但性能已经远超于ENIAC(第一台计算机)。
之后，Intel出品第二款芯片，Intel 8008(1972)，8位处理器。

后来，陆续设计出Intel 8080(1973)，Intel
8085(1976)，直至8086微处理器(1978)，开启了x86平台的纪元。

此时处理器的主要厂商，除Intel外，还有motorola，IBM，Compaq，AMD，Cyrix等。

Intel后续推出80286，80386，80486等产品，此时多个厂商制造的处理器命名混乱，企图通过增加数字的方式，让消费者以为自己的产品更为先进，因此Intel等到80586
开始，改名为Pentium(奔腾)。

Pentium处理器经过2，3，4，D（M）代后，出现了core（酷睿）处理器。

目前，Intel一直占据着高端处理器的市场。x86平台也凭借着其优秀的兼容性，优异的性能被广泛应用于电脑，服务器等领域。

x86处理器市场也从Intel的4004开始，到了Intel，AMD，Cyrix三足鼎立，到Intel一家独大，再到现在Intel，AMD分庭抗衡。

### Atom

ARM处理器在移动端市场占有率，和计算机的不断小型化，便携化，让Intel感到压力，因此Intel急需一种可以兼容x86平台但兼具ARM
平台优势的处理器，即Atom处理器。

但因为兼容性的限制（保证向前兼容至少需要1.65M个晶体管，远比ARM复杂），因此Atom
的表现差强人意，与ARM 相比无论性能还是功耗，没有任何优势（与cortex A9
不相上下，甚至落后）。

ARM架构
=======

ARM公司（Acorn）由Hermann Hauser和Chris
Curry与1978年创立。1985年设计了他们自己的第一代32位、6MHz的精简指令处理器，ARM
（Acorn RISC Machine），后来Acron改名为ARM。

ARM架构的主要优点是价格低，能耗低，因此主要用于便携电子产品和电脑外设。ARM是处理器架构名，同时也是ARM架构的设计商ARM公司的名字。

ARM 架构由ARM
公司(Acorn公司，改名而来)设计和授权，而由众多制造商（国外如三星，苹果，高通，国内如台积电，联发科，华为等）生产，之后或直接出售，或用于自己的产品。

![ARM族[]{label="ARM"}](./arm.JPG)


如图[1]，ARM处理器有用于嵌入式的cortex-Mx系列，也用于应用的cortex-Ax系列。

常见的ARM
处理器出现在手机上，即cortex-A系列。目前ARM产品按性能可以排序为Cortex-A57、
Cortex-A53
、Cortex-A15、Cortex-A8、Cortex-A7、Cortex-A5、ARM11、ARM9、ARM7 等。

AM5728集成了两个cortex-A15，两个cortex-M4，另含两个DSP（C66x）。

其他常见芯片
============

### MCU

（Micro Computer Unit）即所谓的单片机。

### DSP

（Digital Signal
Processing），用于复杂的数值计算，采用哈佛结构，因此理论上速度比冯·诺依曼结构的微处理器速度更快，更适合用于乘法运算，但在通用性上比冯·诺依曼结构的处理器稍差。冯·诺依曼处理器用重复的加法代替乘法，而DSP
只需一个指令就可以完成对应的乘法操作。因此DSP广泛应用于数字信号处理，用于实现复杂的数学公式转换，如傅里叶变换等。

但是目前随着ARM处理器在结构上的改进，使其除在特定应用场合外，基本没有优势可言。

### SOC

（System On
Chip）可以根据需要对其进行定制，即将CPU或其他器件集成到一个芯片上，因此相对比较灵活，它可以将ARM
架构的处理器与一些专用的外围芯片集成到一起，组成一个系统，实现特定用途。

### ASIC

（Application Specific Integrated
Circuits）即专用集成电路，也是根据需要进行定制。与SOC不同，ASIC从芯片级别开始重新设计。
