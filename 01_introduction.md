# R的初级操作

> 这一部分的课程参考了Datacamp的[R introdution](https://www.datacamp.com/courses/free-introduction-to-r)

R语言是现在数据科学中非常流行的一种语言。虽然我个人更倾向于使用python，但是说到生物信息学的各种应用，R还是一个绕不过的东西。所以就算是看在bioconductor的份上，也应该至少学会一下R语言的基础。

## 如何练习R

下载安装R以后，打开R这个软件就可以进入R的命令行模式。R studio是R的一个开发环境，你可以把R studio当做界面更友好的一种R。我们接下来主要会使用R studio作为编程环境。

在R语言里（以及很多其他的语言里）行首的`#`表示`注释`。计算机不会运行注释的内容，但是这些内容对于阅读代码的人来说却很有帮助不管现在你多么确信自己明白一个代码在做什么，几个月以后你肯定不会这么想，所以给代码写注释是一个不错的习惯。至于注释应该写些什么，你可以首先把自己准备解决一个问题的步骤写成几行注释（每一行前面肯定都要有`#`），然后这些注释就像是文章各节的标题，提示下面的代码在做什么工作。

因为注释**不会被运行**。所以当你想让一行代码不被运行的时候，可以在这一行前面加上`#`。当然，如果你不小心在一行应该运行的代码前加上了`#`，这一行代码就没法运行了。

这个教程使用的是markdown语言书写的，具体而言是r markdown。用这种形式一方面可以利用markdown的特性，另一方面，如果用rstudio打开rmd文件的话，代码部分是可以直接运行的。下面是一个代码段，尝试点击代码段右上角的三角符号运行代码

```{r}
# Calculate 3 + 4
3 + 4

# Calculate 6 + 12
6+12
```

### 代码和命令行

如果你打开 R studio 就可以看到软件界面基本上被切分成四个部分。左上角是类似文本编辑器的一个区域，这个区域可以写代码，也可以用表格的形式展示数据；右上角是当前项目中的各种变量和对象；右下角可以查看目前安装的各种包（library），也可以查看帮助文档；而左下角这个区域和R软件就很相似了，是命令行区域。

要说命令行与文本编辑的区别的话，大概就是word写信函与微信聊天的区别吧。命令行会更灵活，当你想和R做一些比较简单的沟通的时候会很方便，但是如果你想做一下需要斟酌表述的沟通的话，那恐怕在文本编辑器里面慢慢写代码会更好。

## 把R当做一个计算器来用

下面说到的这些就是最典型的“简单的沟通”了。在R语言环境里，做一些数学运算是非常方便的：

运算|语言符号
---|---
加法|+
减法|-
乘法|*
除法|/
幂运算|^
取余|%%

最常见的幂运算应该就是平方了，比如说3的平方是9，用代码求就是`3^2`。而取余的意思就是用%%左边的数字除以右边的数字，求余数。试着运行下面的代码：

```{r}
# An addition
5 + 5 

# A subtraction
5 - 5 

# A multiplication
3 * 5

 # A division
(5 + 5) / 2 

# Exponentiation
2 ^ 5

# Modulo
28 %% 6
```

## 变量声明和赋值

变量（variable）是编程的一个基本的概念。变量就是可以变的一个东西（object），因为可以变化，所以你可以为一个变量指定一个值（赋值），然后接下来通过变量的名字重新获得（get）这个值。在R里面变量的赋值的符号是`<-`，当然了，其他语言更通用的`=`也是ok的。运行一下代码：

```{r}
# Assign the value 42 to x
x <- 42

# Print out the value of the variable x
x
```

变量的名称可以很长，一般来说变量的第一个字符使用小写字母，变量名称里面不要写空格（可以考虑用`_`代替)，变量名最好有一定的规律，阅读代码的时候能够根据变量的名字猜出来变量表示的是什么。
