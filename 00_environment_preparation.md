# R运行环境准备

[回到首页](README.md)

以下步骤都是在windows 7虚拟机下完成，安装前系统就是刚刚重装的样子。说实话不这样做我都没发现在安装的过程中会有不少的坑。

## 1. 下载安装R

R语言官方网站：[r project](https://www.r-project.org/)。从[镜像](https://cran.r-project.org/mirrors.html)中选择一个合适的链接下载R软件。

## 2.下载安装Rstudio

[r studio](https://rstudio.com)

**注意有坑：**

运行Rstudio之前，需要安装[windows visual C runtime](https://www.microsoft.com/en-in/download/details.aspx?id=48145)，否则会提示某dll缺失

如果系统之前没有安装过git一类的软件，还需要安装[Rtools包](https://mirrors.tuna.tsinghua.edu.cn/CRAN/bin/windows/Rtools/)确保可以顺利编译程序

## 3.建立工作文件夹

在Rstudio里，File > New Project... >

如果要新建一个全新的工作文件夹在接下来的对话框选择New Directory，如果要使用现有的一个文件夹，使用Existing Directory. 然后选择合适的路径

## 4.设置镜像

在Rstudio里，Tools, Global setting, Packages, Primary CRAN repository, Change...，选择国内的（China...)镜像

## 5.安装bioconductor

参考[bioconductor home > install](https://www.bioconductor.org/install/)

在R环境下运行

```{r}
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install()
```

## 6.设置bioconductor镜像

参考[清华大学开源软件镜像站](https://mirror.tuna.tsinghua.edu.cn/help/bioconductor/)

找到`.Rprofile`，在文末添加：

```
options(BioC_mirror="https://mirrors.tuna.tsinghua.edu.cn/bioconductor")
```

就个人来说，我不确定这个办法在windows能不能work，不过下面这个办法是可以work的：

在R环境中运行：

```{r}
chooseBioCmirror()
```

然后系统会在命令行环境返回一个列表

```
Secure BioC mirrors 

1: 0-Bioconductor (World-wide) [https]
2: Japan (Tachikawa) [https]
3: Japan (Wako) [https]
4: Australia (Sydney) [https]
5: CRAN ASIA (Korea, Japan and Singapore) (Seoul) [https]
6: China (Peking) [https]
7: (other mirrors)
```

这个时候输入6，回车就是国内的镜像 了

## 7.用BiocManager安装包

安装bioconductor的包使用的命令是`BiocManager::install("包的名字")`，比如`BiocManager::install("GEOquery")`就是安装GEOquery这个包。安装的之前程序会自动更新/安装很多其他的包，在安装开始之前，再次确认R的镜像还有bioconductor的镜像都选择了国内的站点，这样可以让安装快很多

## 7.建立一个rmarkdown文件

在Rstudio里面，File>New File>R Markdown

首次新建的时候会提示安装依赖包，选择yes进行安装.

## 预计用时

根据系统性能和网络环境，预计以上工作需要耗时一个小时左右