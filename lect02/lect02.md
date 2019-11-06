# ggplot introduction

首先是ggplot2的安装

```r
install.packages('ggplot2')
```


## Drawing your first plot

还是用mtcars这个数据集,因为这里面有连续变量还有类别变量. 接下来我们用ggplot2包在这个数据集做一些图

### instruction

    Load the ggplot2 package using library().
    Use str() to explore the structure of the mtcars dataset.
    Hit Submit Answer. This will execute the example code on the right. See if you can understand what ggplot does with the data.

    
### codes
```{r}
# Load the ggplot2 package
library(ggplot2)

# Explore the mtcars data frame with str()
str(mtcars)

# Execute the following command
ggplot(mtcars, aes(cyl, mpg)) +
  geom_point()
```


## Data columns types affect plot types

从刚才的图可以看到,cyl(气缸数量)其实更符合类别变量的样子, 但是R默认将它作为数值变量处理了,现在我们用factor()函数做一个转换看看

### instruction

    修改下面的代码, 让cyl被当做factor处理

    
### codes
```{r}
# Load the ggplot2 package
library(ggplot2)

# Change the command below so that cyl is treated as factor
ggplot(mtcars, aes(cyl, mpg)) +
  geom_point()
```

## Mapping data columns to aesthetics

Let's dive a little deeper into the three main topics in this course: The data, aesthetics, and geom layers. We'll get to making pretty plots in the last chapter with the themes layer.

We'll continue working on the 32 cars in the mtcars data frame.

Consider how the examples and concepts we discuss throughout these courses apply to your own data-sets!


instr:
1. Add a color aesthetic mapped to the displacement of the car engine: inside aes(), add a color argument equal to disp.

2. then map disp to size aes

```{r}
# Edit to add a color aesthetic mapped to disp
ggplot(mtcars, aes(wt, mpg)) +
  geom_point()
```

## Adding geometries

The diamonds dataset contains details of 1,000 diamonds. Among the variables included are carat (a measurement of the diamond's size) and price.

You'll use two common geom layer functions:

    geom_point() adds points (as in a scatter plot).
    geom_smooth() adds a smooth trend curve.

As you saw previously, these are added using the + operator.

```{r}
ggplot(data, aes(x, y)) +
  geom_*()
```

Where * is the specific geometry needed.

carried out these tasks:

1. check the structure of diamonds dataset
2. plot with ggplot, dataset is diamonds, carat vs. price, drawing dot plot
3. on top of this, draw geom_smooth() figure

```{r}
# Add geom_smooth() with +
ggplot(diamonds, aes(carat, price)) +
  geom_point() + geom_smooth()
```

## Changing one geom or every geom

If you have multiple geoms, then mapping an aesthetic to data variable inside the call to ggplot() will change all the geoms. It is also possible to make changes to individual geoms by passing arguments to the geom_*() functions.

geom_point() has an alpha argument that controls the opacity of the points. A value of 1 (the default) means that the points are totally opaque; a value of 0 means the points are totally transparent (and therefore invisible). Values in between specify transparency.

The plot you drew last time is provided in the script.

1. color aes to clarity column
2. change the dot plot alpha with alpha = ..

```{r}
# Make the points 40% opaque
ggplot(diamonds, aes(carat, price, color = clarity)) +
  geom_point(alpha=0.4) +
  geom_smooth()
```

## ggplot is just another object

1. 赋值给变量
2. 在变量的基础上用+叠加内容
3. 还可以通过aes在比如geom_point()里面使用dataset的数据

## All about aesthetics: color, shape and size

In the video you saw 9 visible aesthetics. Let's apply them to a categorical variable — the cylinders in mtcars, cyl.

These are the aesthetics you can consider within aes() in this chapter: 
- x
- y, 
- color, 
- fill, 
- size, 
- alpha, 
- labels
- shape

One common convention is that you don't name the x and y arguments to aes(), since they almost always come first, but you do name other arguments.

In the following exercise the fcyl column is categorical. It is cyl transformed into a factor.

## All about aesthetics: color, shape and size

In the video you saw 9 visible aesthetics. Let's apply them to a categorical variable — the cylinders in mtcars, cyl.

These are the aesthetics you can consider within aes() in this chapter: x, y, color, fill, size, alpha, labels and shape.

One common convention is that you don't name the x and y arguments to aes(), since they almost always come first, but you do name other arguments.

In the following exercise the fcyl column is categorical. It is cyl transformed into a factor.
Instructions 4/4
25 XP

    Map mpg onto the x aesthetic, and fcyl onto the y.

    Swap the mappings of the first plot: fcyl onto the x aesthetic, and mpg onto the y.

    Map wt onto x, mpg onto y, and fcyl onto color.
    4

    Modify the point layer of the previous plot by changing the shape argument to 1 and increasing the size to 4.
    
## label(geom_text)

## All about attributes: color, shape, size and alpha

This time you'll use these arguments to set attributes of the plot, not map variables onto aesthetics.

You can specify colors in R using hex codes: a hash followed by two hexadecimal numbers each for red, green, and blue ("#RRGGBB"). Hexadecimal is base-16 counting. You have 0 to 9, and A representing 10 up to F representing 15. Pairs of hexadecimal numbers give you a range from 0 to 255. "#000000" is "black" (no color), "#FFFFFF" means "white", and `"#00FFFF" is cyan (mixed green and blue).

A hexadecimal color variable, my_blue has been defined for you.
Instructions 2/2
50 XP

    Set the point color to my_blue and the alpha to 0.6.
    2
        Change the color mapping to a fill mapping. That is, fcyl should be mapped onto fill.
        Set the color of the points to my_blue, point size to 10 and the point shape to 1.

```{r}
# A hexadecimal color
my_blue <- "#4ABEFF"

# Change the color mapping to a fill mapping
ggplot(mtcars, aes(wt, mpg, fill = fcyl)) +
  # Set point size and shape
  geom_point(color=my_blue,size=10,shape=1)
```

如果要使用rowname来定义label的话,直接label=rownames(mtcars)

color='颜色'

叠加aes元素, 可以在2维图像上展示更多的数据. 如果你要看一个数据集的说明, 可以用?,比如?mtcars

geom_bar 是类似直方图一样的内容

labs 设置x和y轴的title






