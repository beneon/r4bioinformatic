---
title: "实验三 R 语言变量和基本语法"
author: "郑骏明"
date: "2019/11/9"
output: html_document
---

# 实验三 R 语言变量和基本语法

## 实验说明

（一）实验类型：综合性
（二）实验目的：
1.了解R 语言的系统变量和用户自定义变量。
2.掌握R 语言的基本语句结构。

（三）实验内容：

1. R 语言的factor、dataframe与matrix对象
2. 向量，matrix like对象的选择，筛选和排序操作
3. R 语言的选择结构（if…else…）
4. R 语言的for 循环与while 循环。

（四）要求：必开

## 实验讲解

- [矩阵，因子，数据框，流程控制，for循环，apply](../lect01/lect_notes.pdf)
- [（视频）R语言基础: 向量，矩阵，数据框和列表](https://www.bilibili.com/video/av74098925)
- [实验报告电子文档收集问卷](https://www.wjx.cn/jq/50439722.aspx)

## 实验项目

补全以下代码，完成注释的要求

1. 练习factor

```{r}
vect1 = c('m','f','m','m','f')
# 将vect1转换为factor
factor_v1 = ___(__)
v2_pool = c('xxs','xs','m','l','xl','xxl')
vect2 = sample(v2_pool,20)
#将vect2转换为factor，注意v2_pool的'xxs','xs','m','l','xl','xxl'是从小到大的顺次排列
#所以这是一个有序分类变量
factor_v2 = ___(__,ordered=__,levels=__)
# 将vect1转换为factor，但是将m标注为男性，将f标注为女性
factor_v1_label = __(__, levels=c('m','f'), __=___)
# 使用summary输出factor_v2中各等级的数量
summary(__)
```
2. 练习matrix的操作

```{r}
#建立一个矩阵，第一行是12，23，35，第二行是13，31，44
v1 = c(_,_,_,_,_,_)
m_1 = matrix(__,nrow=__,byrow=__)
# 输出m_1
__
# 输出m_1的行和列数量
__
# 为各列命名"f1","f2","f3"
colnames(__) = c(__,__,__)
# 选择第二行并输出
print(__)
# 选择第三列并输出
print(__)
# 选择f1列的第二行输出
print(__)

set.seed(103)
v_prepend = sample(1:100,2,replace=TRUE)
# 用cbind()将v_prepend加入m_1，成为m_1的第一列
m_1 = cbind(__,__)
r_append = sample(1:100,4,replace=TRUE)
# 使用rbind()将r_append加入m_1，成为第3行
```

3. 练习dataframe的操作

```{r}
# 输出mtcars数据框的前5行和后5行
print(__)
print(__)
# 输出mtcars的结构（str)
__(mtcars)
# 下面的代码定义了一系列关于行星的数据
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)
# 基于上面的数据生成一个数据框
planets_df <-
# 检视刚才的数据框的结构
__
# 输出水星(Mercury)的直径
# 使用序号：
planets_df[__,__]
# 使用名称
planets_df[__,__]
# 输出关于火星（Mars）的数据：
planets_df[__,__]
# 输出第2到4行的数据
planets_df[__,__]
```

4. 练习选择，筛选，排序

筛选

```{r}
#继续使用planet_df数据框
#使用planet_df的rings列作为筛选变量，选出rings为TRUE的行
planets_df[__,__]
#尝试subset函数
subset(planets_df,planets_df$rings)
```

排序

```{r}
# 体会下面代码的含义
a <- c(100, 10, 1000)
order(a)
a[order(a)]
# 利用order()生成一个顺序向量：对planets_df的diameter从小到大排序
position = order(__)
# 使用position向量对planets_df的各行进行排序
planets_df[__,__]
# 请自己查看上面的排序是否会对planets_df的顺序产生影响
```

5. if...else判定

```{r}
# 随机生成-20到120之间的一个数，存储为n
n = sample(-20:120,1)
# 书写if ... else if... else...语句，当n大于等于80的且小于等于100的时候输出（print)"优秀"，当n大于等于60但小于80的时候输出"及格"，当n小于60的时候输出"不及格"，否则输出"成绩错误"
if(__){
    __
}else if(__){
    __
}else if(__){
    __
}else{
    __
}
```

6. for循环

```{r}
# v1是10个1到100之间的整数
v1 = sample(1:100,10)
# 逐个判断v1的各个元素是奇数（记录为FALSE）还是偶数（记录为TRUE），将奇偶性的情况记录在v2中
v2 = c()
for (__ in 1:length(__)){
    if (v1[__] %% 2 == 0){
        v2[__] = __
    }else{
        v2[__] = __
    }
}
```

7. 在**纸质实验报告**中总结陈述如何对数据框进行筛选、排序
