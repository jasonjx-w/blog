+++
title = "关于PRML 公式1.97的推导"
date = 2018-06-25
tags = [
        "math",
        "PRML"
]
markup = "mmark"
+++


#### Stirling近似：
$\ln N! \sim NlnN-N$

#### 关于公式1.95

$$H=\frac{1}{N}lnN = \frac{1}{N}lnN!-\frac{1}{N}\sum_i ln n_i!$$


#### 关于公式1.97

$$
H = \frac{1}{N}(NlnN-N)-\frac{1}{N}\sum_i(n_ilnn_i -n_i) - \frac{N}{N}\\
H = \frac{1}{N}NlnN - \frac{1}{N}\sum_in_ilnn_i\\
H = \frac{1}{N}\sum_i nilnN -\frac{1}{N}\sum_i n_ilnn_i\\
H = \frac{1}{N}\sum_i n_i(lnN-lnn_i)\\
H = \frac{1}{N}\sum_i n_iln\frac{N}{n_i}\\
H = - \sum_i\frac{n_i}{N}ln\frac{n_i}{N}\\
H = \sum_ip_ilnp_i\nonumber
$$


#### 关于公示1.120

$$
-\int\int p(x,y)ln\frac{p(x)p(y)}{p(x,y)}dxdy
=-\int\int p(x,y)ln\frac{p(x)}{p(x|y)}dxdy
$$