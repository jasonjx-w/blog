\documentclass{article}
\usepackage[UTF8]{ctex}
\usepackage[colorlinks,linkcolor=black,anchorcolor=black,citecolor=black]{hyperref}

\begin{document}
\tableofcontents


%==========  第一章  ==================================
\newpage{}
\section{算法基础}

    \subsection{数据(data),数据元素(element),数据项(item)} 
        \begin{itemize}
            \item 数据(data):客观事物的抽象表示,即所有能被输入到计算机中并被计算机处理的符号.
            \item 数据元素(element):数据的基本单位,常备当做一个整体进行处理,但一个数据元素可能包含多个数据项.如个人信息统计中的一个词条(包含姓名,性别等).
            \item 数据项(item):数据不可分割的最小单位.\emph{当一个数据元素由多个数据项组成时,位串中各个数据项对应的子位串称作数据域(field)}
            \item 数据对象(data object):数据元素的集合.如''全体整数'',''全体字母''等.
            \item 数据结构(data structure):指相互之间存在特定关系的数据元素的集合.常见的数据结构如:集合,线性结构(第\ref{线性结构}章),树形结构(第\ref{树}章),图状结构或网状结构(第\ref{图}章).
        \end{itemize}

    \subsection{逻辑结构\&物理结构}    
        \begin{itemize}
            \item[-] 逻辑结构:描述数据元素之间的逻辑关系.
            \item[-] 物理结构(存储结构):描述数据结构在计算机中的表示(映象).存储结构又可以分为顺序存储结构和链式存储结构.
        \end{itemize}

    \subsection{算法(algorithm)}  
        \begin{itemize}
            \item 算法性质:
                \begin{itemize}
                \item[-] 输入输出
                \item[-] 可行性
                \item[-] 确定性
                \item[-] 有穷性
                \item[-] 正确性
                \end{itemize}

            \item 算法基本思想:
                \begin{enumerate}
                    \item 分治法
                    \item 动态规划
                    \item 贪心算法
                    \item 回溯法
                    \item 分支界限法
                \end{enumerate}
        \end{itemize}

    \subsection{算法复杂度(complexity)}
        \begin{enumerate}
            \item 时间复杂度\&空间复杂度
            \begin{itemize}
                \item 时间复杂度
                \begin{itemize}
                    \item 大$O$记号:时间复杂度$T(n)$的上界.
                    \item 大$\Omega$记号:时间复杂度$T(n)$的下界.
                    \item 大$\Theta$记号:对于规模$n$,时间复杂度$T(n)$与$\Theta(h(n)$同阶\footnote{当$n$足够大,有$T(n) = \Theta(h(n))$}.
                \end{itemize}

                \item 空间复杂度
            \end{itemize}

            \item 复杂度分析:
            \begin{itemize}
                \item 常数$O(1)$:固定次数的操作,与$n$无关.
                \item 线性$O(n)$:比如$n$次循环.
                \item 对数$O(logn)$:如果每执行一次,规模$n$都衰减一半,会形成对数复杂度.
                \item 幂函数$O(n^k)$:比如$k$重嵌套的$n$次循环.
                \item 指数$O(2^n)$
            \end{itemize}
        \end{enumerate}
        
%======================================================
\newpage{}
\section{线性表(linear list)}
\label{线性结构}
    线性表是$n$个数据元素的有限序列.    
    
    \subsection{顺序表(sequential list)}
        顺序表:
        用一组地址连续的存储单元依次存储线性表的数据元素.
    定义:
    组织形式:
    结构特征:
    类型说明:
    操作:
    \begin{enumerate}
        \item 插入
        \item 删除
        \item 按值查找
    \end{enumerate}
    1. 静态顺序表
    2. 动态顺序表
    \subsection{链表(linked list)}
    组织形式:
    结构特征:
    类型说明:
    判空方法:
    附加头结点\&不加附加头结点区别
    操作:
    \begin{enumerate}
        \item 插入
        \item 删除
        \item 按值查找
    \end{enumerate}


    \subsubsection{循环链表(circular linked lists)}
    结构特点:
    [插入][删除]
    \subsubsection{双链表(doubly list)}
    有无头节点.

    \subsubsection{双循环链表(doubly linked list)}
    结构特点:
    [插入][删除]
    有无头结点
    \subsection{三链表}
    \subsection{相关问题}
    1.链表的倒序
    2.无头链表的删除和插入
    3.链表带环问题

    %=========================================================
    \newpage{}
    \subsection{栈(stack)}
    定义:
    特征:
        \subsubsection{存储方式}
        \begin{itemize}
            \item 顺序存储
            \item 链式存储
        \end{itemize}

        \subsubsection{基础操作}
        基本操作:
        \begin{enumerate}
            \item 创建
            \item 初始化
            \item 扩容
            \item 出入栈
            \item 取栈顶元素
            \item 获取规模
            \item 判空
        \end{enumerate}


    栈的基本运算.1.创建2.初始化3.扩容.4.出入栈5.取栈顶元素6获取规模,判空
    两种存储结构上的基本运算
        \subsubsection{应用}
        \begin{itemize}
            \item 数制转换
            \item 括号匹配
            \item 行编辑
            \item 迷宫
            \item 表达式求值
        \end{itemize}


    %=========================================================
    \newpage{}
    \subsection{队列(queue)}
    定义:
    特征:
    队列的基本运算.1.创建2.初始化.3.出入栈4.队头元素5.队尾元素.6获取规模,判空
    两种存储结构上的基本运算
    顺序队列
    循环队列
    优先级队列
    队列的应用

    \subsection{串}
    串的模式匹配算法(朴素算法);
    串的KMP算法.
    \subsection{数组}

    \subsection{广义表}
    \subsection{hash表}
    1.概念
    2.冲突和解决办法
        1.哈希函数
        2.哈希冲突-开散列
        3.哈希冲突-闭散列
    3.哈希表变形
        1.哈希表变形-位图
        2.哈希表变形-布隆过滤器


%=======================================================
\newpage{}
\section{树}
\label{树}
定义:
术语和基本概念.
性质:
存储方法;
\subsection{二叉树}
定义;
存储方法:
性质:
基本操作:1.创建2.遍历(递归和非递归)3.增删查改删

相关问题:
后序遍历.
线索化二叉树
二叉链表(binary linked list)存储方法,结点(node)结构和类型定义
遍历方法x3:
树和二叉树的转换.
哈夫曼树的构造方法.
\subsubsection{哈夫曼树基本概念}
\subsubsection{哈夫曼树构建方法}
\subsubsection{哈夫曼编码}
\subsubsection{哈夫曼树应用}

\subsection{堆}
\subsubsection{堆的概念}
\subsubsection{堆的创建}
1.大堆2.小堆
\subsubsection{堆的插入和删除}
\subsubsection{应用}
1.优先级队列
2.最大的前K个数字
3.堆排序


\subsection{平衡查找树}
\subsection{多路查找树}
\subsection{堆(大,小顶堆)}
\subsection{字典树}
\subsection{并查集}


%=======================================================
\newpage{}
\section{图}
\label{图}
定义,性质:
存储结构:
\begin{enumerate}
    \item 邻接矩阵
    \item 邻接表
\end{enumerate}

图的遍历;
\begin{enumerate}
    \item 深度优先
    \item 广度优先
\end{enumerate}

算法:
\begin{enumerate}
\item 最小生成树
\item 拓扑排序
\item 关键路径
\item 最短路径
\end{enumerate}


%=======================================================
\newpage{}
\section{查找}
\begin{enumerate}
    \item 顺序表的查找算法
    \item 有序表的查找算法
        1.二分查找
        2.插值查找
        3.斐波那契查找
    \item 线性索引查找
        1.稠密查找
        2.分块查找
        3.倒排索引
    \item 哈希查找
    \item 树表查找
        1.二叉树查找
        2.平衡查找树
            1.平衡二叉树(AVL)
            2.红黑树
        3.多路树查找
            1.2-3树
            2.2-3-4树
            3.B树
            4.B+树
            5.B*树 
    \item 散列表的查找算法
        %散列表的构造
        1.散列函数
        2.冲突处理
\end{enumerate}




%=======================================================
\newpage{}
\section{排序}
\begin{enumerate}
\item 插入排序
    1.直接插入法
    2.希尔算法
\item 选择排序
    1.简单选择排序
    2.堆排序
\item 交换排序
    1.冒泡排序
    2.快速排序
\item 归并排序
\item 桶排序
\item 计数排序
\item 基数排序
\end{enumerate}
内部排序方法比较
外部排序方法:


    
\end{document}