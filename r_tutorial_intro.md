前续之前的导出内容

## Naming a vector

As a data analyst, it is important to have a clear view on the data that you are using. Understanding what each element refers to is therefore essential.

In the previous exercise, we created a vector with your winnings over the week. Each vector element refers to a day of the week but it is hard to tell which element belongs to which day. It would be nice if you could show that in the vector itself.

You can give a name to the elements of a vector with the names() function. Have a look at this example:

some_vector <- c("John Doe", "poker player")
names(some_vector) <- c("Name", "Profession")

This code first creates a vector some_vector and then gives the two elements a name. The first element is assigned the name Name, while the second element is labeled Profession. Printing the contents to the console yields following output:

          Name     Profession 
    "John Doe" "poker player" 


### instruction
Instructions
100 XP

    The code on the right names the elements in poker_vector with the days of the week. Add code to do the same thing for roulette_vector.

    
### codes
```{r}

```

---


## Naming a vector (2)

If you want to become a good statistician, you have to become lazy. (If you are already lazy, chances are high you are one of those exceptional, natural-born statistical talents.)

In the previous exercises you probably experienced that it is boring and frustrating to type and retype information such as the days of the week. However, when you look at it from a higher perspective, there is a more efficient way to do this, namely, to assign the days of the week vector to a variable!

Just like you did with your poker and roulette returns, you can also create a variable that contains the days of the week. This way you can use and re-use it.

### instruction

    A variable days_vector that contains the days of the week has already been created for you.
    Use days_vector to set the names of poker_vector and roulette_vector.

    
### codes
```{r}

```
