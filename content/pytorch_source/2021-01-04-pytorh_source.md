
## pytorch中的概念
* TH = TorcH
* THNN = TorcH Neural Network
* THC = TorcH Cuda
* THCUNN = TorcH CUda Neural Network

## pytorch算子的方法
1. void THNN_(XXXX_updateOutput) 前向传输
2. void THNN_(XXXX_updateGradInput) 获得对输入的梯度
3. void THNN_(XXXX_accGradParameters) 获得对参数的更新梯度





# 参考资料
[PyTorch源码小记-卷积](https://zhuanlan.zhihu.com/p/83517817)

[反向传播推导算法](https://www.cnblogs.com/pinard/p/6494810.html)

[反向卷积原理](https://zhuanlan.zhihu.com/p/61898234)

im2col:(image to col)将平面展成一列. 将每个窗口中的内容展成一列, 所以结果受窗口尺寸影响.