---
title: "读取写入外部数据"
author: "郑骏明"
date: "2019/11/9"
output: html_document
---

# 读取写入外部数据

外部数据的读取和写入是使用R过程中非常基本的操作。外部数据可能有多重格式，常见的包括：

- csv：一般一行代表表格的一行，各列用","分隔
- txt：和csv一样，也属于plain txt（纯文本）
- xlsx和xls：微软Excel软件的文件格式

R里面有若干内置的读取外部数据的函数

- read.table()和read.csv()是非常常用的两个函数
- readLines()可以分行读取一个txt的各行内容
- source()可以从另一个r代码文件中读取代码

## 使用read.table读取外部数据

read.csv实际上是read.table的特殊形式。可以在r里面使用`?read.csv`和`?read.table`阅读这些函数的说明

read.table的若干重要参数：

- file：外部数据文件的路径，或者url链接
- header：数据是否包含表头的逻辑值
- sep：分隔符。常见的分隔符：csv一般使用`,`, 有些外部数据文件也是用tab键作为分隔：`\t`
- colClasses: 字符向量, 指定各列的类型
- nrows: 从外部数据中读取多少行
- comment.char： 外部数据中表示注释的行首符号，默认是`#`
- skip：跳过开头的多少行
- stringAsFactors: 是否自动将字符转换成因子（factor）

使用`?read.csv`可以看到，read.csv只是read.table的特殊形式：

```
read.csv(file, header = TRUE, sep = ",", quote = "\"",
         dec = ".", fill = TRUE, comment.char = "", ...)
```

可以看到read.csv默认将header设置为TRUE，sep使用英文逗号，小数点符号是`.`

## 使用write.table将数据框写入外部文件

如果要把数据输出到外部文件中，可以使用write.table()函数

```{r}
write.table(mtcars,'data/mtcars.csv')
```

再次提醒，你可以使用getwd()获取当前所在路径，然后使用setwd()更改路径

## 使用readxl读取excel文件

与csv不同，xlsx文件不用考虑字符编码，也可以很方便的使用excel软件浏览和修改。在于其他人共享数据的时候excel会是更好的选择。

> 注意， excel这个软件会自动根据内容推断类型。大部分时候不会有什么问题，但是有时候会在意想不到的地方引入错误。

要读取excel文件，需要额外安装其他的包，可供选择的包非常多，这里使用的是readxl

### 安装

建议一键安装tidyverse：`install.packages("tidyverse")`，这样一来包括dplyr，ggplot2这些也一起装好了。安装完成以后使用`library(readxl)`载入readxl

### 读取

要读取一个外部xlsx或者xls文件，直接使用read_excel()就行了

```{r}
df = read_excel('外部数据的路径')
```

上面的代码会读取xlsx文件中的第一个数据表。如果要指定读取哪一个数据表，应该设置sheet参数

```{r}
df = read_excel('路径',sheet='数据表名称')
```

## 将数据写入xlsx文件

### 安装writexl包

使用`install.packages('writexl')`命令安装， library(writexl)载入

### 写入外部文件

```{r}
write_xlsx(数据框, '写入路径')
```

这样就可以将数据框的内容写入外部xlsx文件。write_xlsx命令默认输出表头（col_names=TRUE)。

不过如果想同时输出多个数据框，放进一个excel的文件里，首先就需要将数据框做成list

```{r}
li_datasets = list(mtcars = mtcars, iris = iris)
write_xlsx(li_datasets,'output.xlsx')
```
