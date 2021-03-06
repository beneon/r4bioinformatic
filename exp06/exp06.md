---
title: "实验六 生物信息基本图形绘制"
author: "郑骏明"
date: "2019/11/9"
output: html_document
---

# 实验六 生物信息基本图形绘制

## 实验说明

（一）实验类型：综合性
（二）实验目的：
1.熟悉R 语言进行基本图形绘制。
2.以图片形式导出绘图结果。
（三）实验内容：
1.使用ggplot进行散点图绘制，掌握图形布局。
2.使用boxplot、barplot、hist、pie 等函数进行箱线图、条形图、直方图、饼图等图
形绘制。
3.使用png 和pdf 函数导出绘图结果。

## 实验讲解

> [ggplot讲义](../lect02/lect02.pdf)

1. 绘制散点图

使用ggplot2自带的diamonds数据集，绘制散点图。

1.1 由于该数据集包含53940条记录，绘制起来会比较费时。我们可以使用sample_frac函数从数据集随机抽取一定比例的数据点然后再交给ggplot绘图
```{r}
__
```
1.2 使用glimpse函数或str函数了解diamonds数据集的概况
```{r}
__
```
1.3 price是以美元作为单位，将其按照1美元：7.04人民币的汇率转换成人民币为单位的price_cny
```{r}
__
```
1.4 使用carat作为x轴，`price_cny`作为y轴，以clarity作为color绘制散点图
```{r}
__
```
1.5 使用carat作为x轴，`price_cny`作为y轴，以cut（切工）作为facet_wrap依据绘制散点图
```{r}
__
```

2. 绘制直方图和boxplot

2.1. 以cut变量作为x轴，绘制price_cny的箱型图，并在箱型图上叠加数据散点图（geom_jitter)。请注意箱型图中数据点的分布
```{r}
__
```
2.2. 继续使用刚才的diamonds数据集，绘制price_cny的直方图
```{r}
__
```
2.3. 以cut变量作为fill的映射依据，绘制price_cny的直方图
```{r}
__
```
2.4. 2.3中的直方图，对x轴进行log10转换
```{r}
__
```

3. 利用pcr数据绘制柱状图，添加error_bar

上一次实验中，我们对pcr的数据做了很多处理，并且计算了平均值和标准差

3.1 以平均值作为ddCt，计算相对表达量的倍数差（2^-ddCt)
```{r}
__
```
3.2 平均值加减标准差作为ddCt的上下限，计算相对表达量倍数差的上下限（`2^-ddCt_min`, `2^-ddCt_max`)
```{r}
__
```
3.2 利用这些数据绘制3d和7d时CyclinD和CyclinE的相对表达量的柱形图

```{r}
__
```