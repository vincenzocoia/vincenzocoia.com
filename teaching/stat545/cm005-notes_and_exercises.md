# cm005 Notes and Exercises
September 19, 2017  


```r
library(tidyverse)
```

```
## Loading tidyverse: ggplot2
## Loading tidyverse: tibble
## Loading tidyverse: tidyr
## Loading tidyverse: readr
## Loading tidyverse: purrr
## Loading tidyverse: dplyr
```

```
## Conflicts with tidy packages ----------------------------------------------
```

```
## filter(): dplyr, stats
## lag():    dplyr, stats
```

```r
library(gapminder)
```

## 1. A quick look at data types in R

### 1.1 Overview

Data types are summarized nicely in [JB's small slideshow](https://speakerdeck.com/jennybc/simple-view-of-r-objects).

### 1.2 Investigation using R

We've seen that R understands numbers -- a _data type_. What other type of objects does R recognize? Let's identify them, and test them with the `typeof` function. There are

- `Double`s (as we've seen -- they're numbers)


```r
typeof(5.6)
```

```
## [1] "double"
```

- `Integer`s: (special type of number -- need an `L` at the end)


```r
typeof(4L)
```

```
## [1] "integer"
```

```r
typeof(4)
```

```
## [1] "double"
```

- `logical`s are true/false (known as `boolean`s in other languages). We highly recommend using TRUE/FALSE instead of T/F (you can assign T/F as variables, as we'll see later). 


```r
typeof(TRUE)
```

```
## [1] "logical"
```

```r
typeof(T)
```

```
## [1] "logical"
```

```r
typeof(FALSE)
```

```
## [1] "logical"
```

```r
typeof(F)
```

```
## [1] "logical"
```

- `character`s:


```r
typeof("Hi, my name is Vincenzo.")
```

```
## [1] "character"
```

__Exercise__: Find the data type of `"5"`. Explain the output. 


```r
typeof("5")
```

```
## [1] "character"
```


__Exercise__: Use the `as.numeric` function to convert `"5"` to an object of type `"double"`. 


```r
as.numeric("5")
```

```
## [1] 5
```


__Exercise__: Describe this output:


```r
typeof(typeof(15.2))
```

```
## [1] "character"
```



## 2. Data Frames in R


### 2.1 "Care and Feeding of Data": Exercises

Last class, we went through the [Care and Feeding of Data in R](http://stat545.com/block006_care-feeding-data.html) tutorial. Let's do some exercises, this time with the `iris` dataset (comes pre-loaded in the `datasets` package). Use any method you'd like to answer the following questions. 

1. How many variables (columns) are in the `iris` dataset, and what are their names?


```r
ncol(iris)
```

```
## [1] 5
```

```r
head(iris)
```

```
##   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
## 1          5.1         3.5          1.4         0.2  setosa
## 2          4.9         3.0          1.4         0.2  setosa
## 3          4.7         3.2          1.3         0.2  setosa
## 4          4.6         3.1          1.5         0.2  setosa
## 5          5.0         3.6          1.4         0.2  setosa
## 6          5.4         3.9          1.7         0.4  setosa
```


2. How many rows are in the data set?


```r
nrow(iris)
```

```
## [1] 150
```

```r
dim(iris)
```

```
## [1] 150   5
```


3. What are the smallest values of each numeric variable?


```r
summary(iris)
```

```
##   Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
##  Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100  
##  1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300  
##  Median :5.800   Median :3.000   Median :4.350   Median :1.300  
##  Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199  
##  3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800  
##  Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  
##        Species  
##  setosa    :50  
##  versicolor:50  
##  virginica :50  
##                 
##                 
## 
```


4. Extract the `Petal.Width` column to get a vector of observations (we'll see vectors in more detail in a later class), and
    (a) Make a histogram
    (b) Make a table of frequencies


```r
x <- iris$Petal.Width
hist(x)
```

![](cm005-notes_and_exercises_files/figure-html/unnamed-chunk-12-1.png)<!-- -->

```r
table(x)
```

```
## x
## 0.1 0.2 0.3 0.4 0.5 0.6   1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9   2 2.1 
##   5  29   7   7   1   1   7   3   5  13   8  12   4   2  12   5   6   6 
## 2.2 2.3 2.4 2.5 
##   3   8   3   3
```


### 2.2 `dplyr` fundamentals

Next, we'll learn about `dplyr`, a handy R package for manipulating data frames, through six main functions. According to the [R for data science](http://r4ds.had.co.nz/transform.html) book, the main five (in different order) are:

> - Pick observations by their values (`filter()`).
> - Pick variables by their names (`select()`).
    
- (We'll sneak "piping" into here)

> - Reorder the rows (`arrange()`).
> - Create new variables with functions of existing variables (`mutate()`).
> - Collapse many values down to a single summary (`summarise()`).

Then there's `group_by()`, which can be used in conjunction with all of these.

We'll get through as much as we can in this class, and will continue in cm006, possibly with some more exercises and more features of `dplyr`.

Resources underpinning this section can be found in two parts: [part 1](http://stat545.com/block009_dplyr-intro.html) and [part 2](http://stat545.com/block010_dplyr-end-single-table.html).

#### `filter`

`filter` subsets data frames according to some logical expression. 

Basic example:


```r
filter(gapminder, country=="Canada")
```

```
## # A tibble: 12 × 6
##    country continent  year lifeExp      pop gdpPercap
##     <fctr>    <fctr> <int>   <dbl>    <int>     <dbl>
## 1   Canada  Americas  1952  68.750 14785584  11367.16
## 2   Canada  Americas  1957  69.960 17010154  12489.95
## 3   Canada  Americas  1962  71.300 18985849  13462.49
## 4   Canada  Americas  1967  72.130 20819767  16076.59
## 5   Canada  Americas  1972  72.880 22284500  18970.57
## 6   Canada  Americas  1977  74.210 23796400  22090.88
## 7   Canada  Americas  1982  75.760 25201900  22898.79
## 8   Canada  Americas  1987  76.860 26549700  26626.52
## 9   Canada  Americas  1992  77.950 28523502  26342.88
## 10  Canada  Americas  1997  78.610 30305843  28954.93
## 11  Canada  Americas  2002  79.770 31902268  33328.97
## 12  Canada  Americas  2007  80.653 33390141  36319.24
```

Logical expressions are governed by __relational operators__, that output either `TRUE` or `FALSE` based on the validity of the statement you give it. Here's a summary of the operators:

| Operation | Outputs `TRUE` or `FALSE` based on the validity of the statement... |
| ------ | ----- |
| `a == b` | `a` is equal to `b` |
| `a != b` | `a` is not equal to `b`. |
| `a > b` | `a` is greater than `b`. |
| `a < b` | `a` is less than `b`. |
| `a >= b` | `a` is greater than or equal to `b`. |
| `a <= b` | `a` is less than or equal to `b`. |
| `a %in% b` | `a` is an element in `b`. | 

Let's see some examples:



```r
5 == 3
```

```
## [1] FALSE
```

```r
c(1, 2, 3) < 3   # vectorized!
```

```
## [1]  TRUE  TRUE FALSE
```

```r
4 %in% c(1, 2, 3, 4, 5)
```

```
## [1] TRUE
```

```r
my_equality <- 5 == 3
print(my_equality)
```

```
## [1] FALSE
```


There are __logical__ operators too, and they follow Boolean Algebra. They're listed below -- the first three are fundamental, but the others are useful too.

| Operation | Outputs `TRUE` or `FALSE` based on the validity of the statement... |
| ------ | ----- |
| `a & b`, `a && b` | Both `a` __and__ `b` are `TRUE` |
| `a | b`, `a || b` | Either `a` __or__ `b` is `TRUE`. |
| `!a` | `a` is __not__ `TRUE` (in other words, take the complement or "flip" `a`) |
| `xor(a, b)` | Either `a` or `b` is `TRUE`, but not both. |
| `all(a,b,c,...)` | `a`, `b`, `c`, ... are __all__ `TRUE`. |
| `any(a,b,c,...)` | __Any__ one of `a`, `b`, `c`, ... is `TRUE`. |

We can `filter` by more than one condition:


```r
#filter(gapminder, country=="Canada" & year < 1980) # same as...
filter(gapminder, country=="Canada", year < 1970)
```

```
## # A tibble: 4 × 6
##   country continent  year lifeExp      pop gdpPercap
##    <fctr>    <fctr> <int>   <dbl>    <int>     <dbl>
## 1  Canada  Americas  1952   68.75 14785584  11367.16
## 2  Canada  Americas  1957   69.96 17010154  12489.95
## 3  Canada  Americas  1962   71.30 18985849  13462.49
## 4  Canada  Americas  1967   72.13 20819767  16076.59
```

```r
filter(gapminder, country=="Canada" | year == 1952)
```

```
## # A tibble: 153 × 6
##        country continent  year lifeExp      pop  gdpPercap
##         <fctr>    <fctr> <int>   <dbl>    <int>      <dbl>
## 1  Afghanistan      Asia  1952  28.801  8425333   779.4453
## 2      Albania    Europe  1952  55.230  1282697  1601.0561
## 3      Algeria    Africa  1952  43.077  9279525  2449.0082
## 4       Angola    Africa  1952  30.015  4232095  3520.6103
## 5    Argentina  Americas  1952  62.485 17876956  5911.3151
## 6    Australia   Oceania  1952  69.120  8691212 10039.5956
## 7      Austria    Europe  1952  66.800  6927772  6137.0765
## 8      Bahrain      Asia  1952  50.939   120447  9867.0848
## 9   Bangladesh      Asia  1952  37.484 46886859   684.2442
## 10     Belgium    Europe  1952  68.000  8730405  8343.1051
## # ... with 143 more rows
```

From the Part 1 notes... never do the following!

> ```
> excerpt <- gapminder[241:252, ]
> ```
> 
> Why is this a terrible idea?
> 
> - It is not self-documenting. What is so special about rows 241 through 252?
> - It is fragile. This line of code will produce different results if someone changes the row order of `gapminder`, e.g. sorts the data earlier in the script.

__Exercises__: Let's try some exercises using the `gapminder` data set. 

1. Find all entries of Canada and Algeria. 


```r
filter(gapminder, 
       country == "Canada" |
           country == "Algeria")
```

```
## # A tibble: 24 × 6
##    country continent  year lifeExp      pop gdpPercap
##     <fctr>    <fctr> <int>   <dbl>    <int>     <dbl>
## 1  Algeria    Africa  1952  43.077  9279525  2449.008
## 2  Algeria    Africa  1957  45.685 10270856  3013.976
## 3  Algeria    Africa  1962  48.303 11000948  2550.817
## 4  Algeria    Africa  1967  51.407 12760499  3246.992
## 5  Algeria    Africa  1972  54.518 14760787  4182.664
## 6  Algeria    Africa  1977  58.014 17152804  4910.417
## 7  Algeria    Africa  1982  61.368 20033753  5745.160
## 8  Algeria    Africa  1987  65.799 23254956  5681.359
## 9  Algeria    Africa  1992  67.744 26298373  5023.217
## 10 Algeria    Africa  1997  69.152 29072015  4797.295
## # ... with 14 more rows
```

```r
filter(gapminder,
       country %in% c("Canada", "Algeria"))
```

```
## # A tibble: 24 × 6
##    country continent  year lifeExp      pop gdpPercap
##     <fctr>    <fctr> <int>   <dbl>    <int>     <dbl>
## 1  Algeria    Africa  1952  43.077  9279525  2449.008
## 2  Algeria    Africa  1957  45.685 10270856  3013.976
## 3  Algeria    Africa  1962  48.303 11000948  2550.817
## 4  Algeria    Africa  1967  51.407 12760499  3246.992
## 5  Algeria    Africa  1972  54.518 14760787  4182.664
## 6  Algeria    Africa  1977  58.014 17152804  4910.417
## 7  Algeria    Africa  1982  61.368 20033753  5745.160
## 8  Algeria    Africa  1987  65.799 23254956  5681.359
## 9  Algeria    Africa  1992  67.744 26298373  5023.217
## 10 Algeria    Africa  1997  69.152 29072015  4797.295
## # ... with 14 more rows
```


2. Find all entries of Canada and Algeria, occuring in the '60s. 


```r
filter(gapminder,
       country %in% c("Canada", "Algeria"), year < 1970, year >= 1960)
```

```
## # A tibble: 4 × 6
##   country continent  year lifeExp      pop gdpPercap
##    <fctr>    <fctr> <int>   <dbl>    <int>     <dbl>
## 1 Algeria    Africa  1962  48.303 11000948  2550.817
## 2 Algeria    Africa  1967  51.407 12760499  3246.992
## 3  Canada  Americas  1962  71.300 18985849 13462.486
## 4  Canada  Americas  1967  72.130 20819767 16076.588
```


3. Find all entries of Canada, and entries of Algeria occuring in the '60s. 

```r
filter(gapminder,
       (country == "Canada") |
           (country == "Algeria" & 
            year %in% 1960:1969))
```

```
## # A tibble: 14 × 6
##    country continent  year lifeExp      pop gdpPercap
##     <fctr>    <fctr> <int>   <dbl>    <int>     <dbl>
## 1  Algeria    Africa  1962  48.303 11000948  2550.817
## 2  Algeria    Africa  1967  51.407 12760499  3246.992
## 3   Canada  Americas  1952  68.750 14785584 11367.161
## 4   Canada  Americas  1957  69.960 17010154 12489.950
## 5   Canada  Americas  1962  71.300 18985849 13462.486
## 6   Canada  Americas  1967  72.130 20819767 16076.588
## 7   Canada  Americas  1972  72.880 22284500 18970.571
## 8   Canada  Americas  1977  74.210 23796400 22090.883
## 9   Canada  Americas  1982  75.760 25201900 22898.792
## 10  Canada  Americas  1987  76.860 26549700 26626.515
## 11  Canada  Americas  1992  77.950 28523502 26342.884
## 12  Canada  Americas  1997  78.610 30305843 28954.926
## 13  Canada  Americas  2002  79.770 31902268 33328.965
## 14  Canada  Americas  2007  80.653 33390141 36319.235
```


4. Find all entries _not_ including European countries.


```r
filter(gapminder, 
       continent != "Europe")
```

```
## # A tibble: 1,344 × 6
##        country continent  year lifeExp      pop gdpPercap
##         <fctr>    <fctr> <int>   <dbl>    <int>     <dbl>
## 1  Afghanistan      Asia  1952  28.801  8425333  779.4453
## 2  Afghanistan      Asia  1957  30.332  9240934  820.8530
## 3  Afghanistan      Asia  1962  31.997 10267083  853.1007
## 4  Afghanistan      Asia  1967  34.020 11537966  836.1971
## 5  Afghanistan      Asia  1972  36.088 13079460  739.9811
## 6  Afghanistan      Asia  1977  38.438 14880372  786.1134
## 7  Afghanistan      Asia  1982  39.854 12881816  978.0114
## 8  Afghanistan      Asia  1987  40.822 13867957  852.3959
## 9  Afghanistan      Asia  1992  41.674 16317921  649.3414
## 10 Afghanistan      Asia  1997  41.763 22227415  635.3414
## # ... with 1,334 more rows
```


#### `select`

`select` subsets data by columns/variable names.


```r
select(gapminder, continent, country)
```

```
## # A tibble: 1,704 × 2
##    continent     country
##       <fctr>      <fctr>
## 1       Asia Afghanistan
## 2       Asia Afghanistan
## 3       Asia Afghanistan
## 4       Asia Afghanistan
## 5       Asia Afghanistan
## 6       Asia Afghanistan
## 7       Asia Afghanistan
## 8       Asia Afghanistan
## 9       Asia Afghanistan
## 10      Asia Afghanistan
## # ... with 1,694 more rows
```

- Always returns a tibble. 
- Drop variables with `-`. 
- Note that re-ordering happens here. 

#### piping

What if we wanted to do more than one operation? For example:

- take all entries of Canada and Algeria occuring in the '60s, and
- select the `country`, `year`, and `gdpPercap` columns.

We could do...


```r
select(filter(gapminder, 
              country %in% c("Canada", "Algeria"), 
              year <= 1969, year >= 1960),
       country, year, gdpPercap)
```

```
## # A tibble: 4 × 3
##   country  year gdpPercap
##    <fctr> <int>     <dbl>
## 1 Algeria  1962  2550.817
## 2 Algeria  1967  3246.992
## 3  Canada  1962 13462.486
## 4  Canada  1967 16076.588
```

But the chain of functions can get quite long and hard to read.

The __pipe__ operator `%>%` feeds the output of a function into another function. Syntax:

```
gapminder %>% 
    f1() %>% 
    f2() %>% 
    f3(options=something)
```

This says:

1. Start with the `gapminder` data, then
2. apply `f1` to it, then
3. apply `f2`, then
4. apply `f3` with the `options=something` argument. 

The same operation above becomes:


```r
gapminder %>% 
    filter(country %in% c("Canada", "Algeria"), 
           year <= 1969, year >= 1960) %>% 
    select(country, year, gdpPercap)
```

```
## # A tibble: 4 × 3
##   country  year gdpPercap
##    <fctr> <int>     <dbl>
## 1 Algeria  1962  2550.817
## 2 Algeria  1967  3246.992
## 3  Canada  1962 13462.486
## 4  Canada  1967 16076.588
```

You can read this as:

1. start with the `gapminder` data, then
2. take all entries of Canada and Algeria occuring in the '60s (`filter`), then
3. select the `country`, `year`, and `gdpPercap` columns. 

__Exercise__: Take all countries in Europe that have a GPD per capita greater than 10000, and select all variables except `gdpPercap`. (Hint: use `-`).


```r
gapminder %>% 
    filter(continent == "Europe",
           gdpPercap > 10000) %>% 
    select(-gdpPercap)
```

```
## # A tibble: 214 × 5
##    country continent  year lifeExp     pop
##     <fctr>    <fctr> <int>   <dbl>   <int>
## 1  Austria    Europe  1962  69.540 7129864
## 2  Austria    Europe  1967  70.140 7376998
## 3  Austria    Europe  1972  70.630 7544201
## 4  Austria    Europe  1977  72.170 7568430
## 5  Austria    Europe  1982  73.180 7574613
## 6  Austria    Europe  1987  74.940 7578903
## 7  Austria    Europe  1992  76.040 7914969
## 8  Austria    Europe  1997  77.510 8069876
## 9  Austria    Europe  2002  78.980 8148312
## 10 Austria    Europe  2007  79.829 8199783
## # ... with 204 more rows
```


#### `arrange`

`arrange` sorts a data frame by shuffling the order of the rows appropriately. Use `desc` to sort by descending order.

Order `gapminder` by population, then life expectancy:


```r
arrange(gapminder, pop, lifeExp)
```

```
## # A tibble: 1,704 × 6
##                  country continent  year lifeExp   pop gdpPercap
##                   <fctr>    <fctr> <int>   <dbl> <int>     <dbl>
## 1  Sao Tome and Principe    Africa  1952  46.471 60011  879.5836
## 2  Sao Tome and Principe    Africa  1957  48.945 61325  860.7369
## 3               Djibouti    Africa  1952  34.812 63149 2669.5295
## 4  Sao Tome and Principe    Africa  1962  51.893 65345 1071.5511
## 5  Sao Tome and Principe    Africa  1967  54.425 70787 1384.8406
## 6               Djibouti    Africa  1957  37.328 71851 2864.9691
## 7  Sao Tome and Principe    Africa  1972  56.480 76595 1532.9853
## 8  Sao Tome and Principe    Africa  1977  58.550 86796 1737.5617
## 9               Djibouti    Africa  1962  39.693 89898 3020.9893
## 10 Sao Tome and Principe    Africa  1982  60.351 98593 1890.2181
## # ... with 1,694 more rows
```


__Exercises__:

1. Order the data frame by year, then descending by life expectancy.


```r
arrange(gapminder, year, desc(lifeExp))
```

```
## # A tibble: 1,704 × 6
##           country continent  year lifeExp      pop gdpPercap
##            <fctr>    <fctr> <int>   <dbl>    <int>     <dbl>
## 1          Norway    Europe  1952   72.67  3327728 10095.422
## 2         Iceland    Europe  1952   72.49   147962  7267.688
## 3     Netherlands    Europe  1952   72.13 10381988  8941.572
## 4          Sweden    Europe  1952   71.86  7124673  8527.845
## 5         Denmark    Europe  1952   70.78  4334000  9692.385
## 6     Switzerland    Europe  1952   69.62  4815000 14734.233
## 7     New Zealand   Oceania  1952   69.39  1994794 10556.576
## 8  United Kingdom    Europe  1952   69.18 50430000  9979.508
## 9       Australia   Oceania  1952   69.12  8691212 10039.596
## 10         Canada  Americas  1952   68.75 14785584 11367.161
## # ... with 1,694 more rows
```


2. In addition to the above exercise, rearrange the variables so that `year` comes first, followed by life expectancy. (Hint: check the documentation for the `select` function for a related handy function).


```r
gapminder %>% 
    arrange(year, desc(lifeExp)) %>% 
    select(year, lifeExp, everything())
```

```
## # A tibble: 1,704 × 6
##     year lifeExp        country continent      pop gdpPercap
##    <int>   <dbl>         <fctr>    <fctr>    <int>     <dbl>
## 1   1952   72.67         Norway    Europe  3327728 10095.422
## 2   1952   72.49        Iceland    Europe   147962  7267.688
## 3   1952   72.13    Netherlands    Europe 10381988  8941.572
## 4   1952   71.86         Sweden    Europe  7124673  8527.845
## 5   1952   70.78        Denmark    Europe  4334000  9692.385
## 6   1952   69.62    Switzerland    Europe  4815000 14734.233
## 7   1952   69.39    New Zealand   Oceania  1994794 10556.576
## 8   1952   69.18 United Kingdom    Europe 50430000  9979.508
## 9   1952   69.12      Australia   Oceania  8691212 10039.596
## 10  1952   68.75         Canada  Americas 14785584 11367.161
## # ... with 1,694 more rows
```


#### `mutate`

`mutate` creates a new variable by calculating from other variables. Let's get GDP by multiplying GPD per capita with population:


```r
mutate(gapminder, gdp = gdpPercap * pop)
```

```
## # A tibble: 1,704 × 7
##        country continent  year lifeExp      pop gdpPercap         gdp
##         <fctr>    <fctr> <int>   <dbl>    <int>     <dbl>       <dbl>
## 1  Afghanistan      Asia  1952  28.801  8425333  779.4453  6567086330
## 2  Afghanistan      Asia  1957  30.332  9240934  820.8530  7585448670
## 3  Afghanistan      Asia  1962  31.997 10267083  853.1007  8758855797
## 4  Afghanistan      Asia  1967  34.020 11537966  836.1971  9648014150
## 5  Afghanistan      Asia  1972  36.088 13079460  739.9811  9678553274
## 6  Afghanistan      Asia  1977  38.438 14880372  786.1134 11697659231
## 7  Afghanistan      Asia  1982  39.854 12881816  978.0114 12598563401
## 8  Afghanistan      Asia  1987  40.822 13867957  852.3959 11820990309
## 9  Afghanistan      Asia  1992  41.674 16317921  649.3414 10595901589
## 10 Afghanistan      Asia  1997  41.763 22227415  635.3414 14121995875
## # ... with 1,694 more rows
```

You can define multiple new variables -- even back-dependent on new ones! Let's also create a column for GDP in billions, rounded to one decimal:


```r
mutate(gapminder, 
       gdp     = gdpPercap * pop, 
       gdpBill = round(gdp/1000000000, 1))
```

```
## # A tibble: 1,704 × 8
##        country continent  year lifeExp      pop gdpPercap         gdp
##         <fctr>    <fctr> <int>   <dbl>    <int>     <dbl>       <dbl>
## 1  Afghanistan      Asia  1952  28.801  8425333  779.4453  6567086330
## 2  Afghanistan      Asia  1957  30.332  9240934  820.8530  7585448670
## 3  Afghanistan      Asia  1962  31.997 10267083  853.1007  8758855797
## 4  Afghanistan      Asia  1967  34.020 11537966  836.1971  9648014150
## 5  Afghanistan      Asia  1972  36.088 13079460  739.9811  9678553274
## 6  Afghanistan      Asia  1977  38.438 14880372  786.1134 11697659231
## 7  Afghanistan      Asia  1982  39.854 12881816  978.0114 12598563401
## 8  Afghanistan      Asia  1987  40.822 13867957  852.3959 11820990309
## 9  Afghanistan      Asia  1992  41.674 16317921  649.3414 10595901589
## 10 Afghanistan      Asia  1997  41.763 22227415  635.3414 14121995875
## # ... with 1,694 more rows, and 1 more variables: gdpBill <dbl>
```

`transmute` works the same way, but drops all other variables. 

__Exercise__: Make a new column called `cc` that pastes the country name followed by the continent, separated by a comma. (Hint: use the `paste` function with the `sep=", "` argument).


```r
mutate(gapminder, cc = paste(country, continent, sep=", "))
```

```
## # A tibble: 1,704 × 7
##        country continent  year lifeExp      pop gdpPercap
##         <fctr>    <fctr> <int>   <dbl>    <int>     <dbl>
## 1  Afghanistan      Asia  1952  28.801  8425333  779.4453
## 2  Afghanistan      Asia  1957  30.332  9240934  820.8530
## 3  Afghanistan      Asia  1962  31.997 10267083  853.1007
## 4  Afghanistan      Asia  1967  34.020 11537966  836.1971
## 5  Afghanistan      Asia  1972  36.088 13079460  739.9811
## 6  Afghanistan      Asia  1977  38.438 14880372  786.1134
## 7  Afghanistan      Asia  1982  39.854 12881816  978.0114
## 8  Afghanistan      Asia  1987  40.822 13867957  852.3959
## 9  Afghanistan      Asia  1992  41.674 16317921  649.3414
## 10 Afghanistan      Asia  1997  41.763 22227415  635.3414
## # ... with 1,694 more rows, and 1 more variables: cc <chr>
```


#### `summarize` and `group_by`

`summarize` reduces a tibble according to summary statistics.


```r
summarize(gapminder, mean_pop=mean(pop), sd_pop=sd(pop))
```

```
## # A tibble: 1 × 2
##   mean_pop    sd_pop
##      <dbl>     <dbl>
## 1 29601212 106157897
```

Not very useful by itself! But, with the `group_by` function, the `summarize` function is very useful:


```r
gapminder %>% 
    group_by(country) %>% 
    summarize(mean_pop=mean(pop), sd_pop=sd(pop))
```

```
## # A tibble: 142 × 3
##        country   mean_pop     sd_pop
##         <fctr>      <dbl>      <dbl>
## 1  Afghanistan 15823715.4  7114583.5
## 2      Albania  2580249.2   828585.5
## 3      Algeria 19875406.2  8613355.3
## 4       Angola  7309390.1  2672280.6
## 5    Argentina 28602239.9  7546609.0
## 6    Australia 14649312.5  3915203.0
## 7      Austria  7583298.4   437660.0
## 8      Bahrain   373913.2   210893.3
## 9   Bangladesh 90755395.3 34711660.7
## 10     Belgium  9725118.7   520635.9
## # ... with 132 more rows
```

The `group_by` function splits the tibble into parts -- in the above case, by country. Notice the "Groups" indicator in the following output:


```r
group_by(gapminder, continent, country, year < 1970)
```

```
## Source: local data frame [1,704 x 7]
## Groups: continent, country, year < 1970 [284]
## 
##        country continent  year lifeExp      pop gdpPercap `year < 1970`
##         <fctr>    <fctr> <int>   <dbl>    <int>     <dbl>         <lgl>
## 1  Afghanistan      Asia  1952  28.801  8425333  779.4453          TRUE
## 2  Afghanistan      Asia  1957  30.332  9240934  820.8530          TRUE
## 3  Afghanistan      Asia  1962  31.997 10267083  853.1007          TRUE
## 4  Afghanistan      Asia  1967  34.020 11537966  836.1971          TRUE
## 5  Afghanistan      Asia  1972  36.088 13079460  739.9811         FALSE
## 6  Afghanistan      Asia  1977  38.438 14880372  786.1134         FALSE
## 7  Afghanistan      Asia  1982  39.854 12881816  978.0114         FALSE
## 8  Afghanistan      Asia  1987  40.822 13867957  852.3959         FALSE
## 9  Afghanistan      Asia  1992  41.674 16317921  649.3414         FALSE
## 10 Afghanistan      Asia  1997  41.763 22227415  635.3414         FALSE
## # ... with 1,694 more rows
```

Let's get a summary of this grouping:


```r
(out1 <- gapminder %>% 
    group_by(continent, country, year < 1970) %>% 
    summarize(mean_pop=mean(pop), sd_pop=sd(pop)))
```

```
## Source: local data frame [284 x 5]
## Groups: continent, country [?]
## 
##    continent      country `year < 1970` mean_pop     sd_pop
##       <fctr>       <fctr>         <lgl>    <dbl>      <dbl>
## 1     Africa      Algeria         FALSE 24399131 6745137.16
## 2     Africa      Algeria          TRUE 10827957 1468859.84
## 3     Africa       Angola         FALSE  8605718 2319732.71
## 4     Africa       Angola          TRUE  4716735  429199.92
## 5     Africa        Benin         FALSE  4995905 1908684.02
## 6     Africa        Benin          TRUE  2060679  297229.81
## 7     Africa     Botswana         FALSE  1208873  392508.86
## 8     Africa     Botswana          TRUE   495813   48065.86
## 9     Africa Burkina Faso         FALSE  8919146 3178417.99
## 10    Africa Burkina Faso          TRUE  4807740  281676.04
## # ... with 274 more rows
```

Note that the output is still a tibble, but one "layer" of grouping has been peeled back: the `year < 1970` variable. `summarize` again and you'll see that the tibble was no longer grouped by `year < 1970`. 


```r
out1 %>% 
    summarize(mean_pop=mean(mean_pop))
```

```
## Source: local data frame [142 x 3]
## Groups: continent [?]
## 
##    continent                  country   mean_pop
##       <fctr>                   <fctr>      <dbl>
## 1     Africa                  Algeria 17613543.9
## 2     Africa                   Angola  6661226.3
## 3     Africa                    Benin  3528292.3
## 4     Africa                 Botswana   852342.9
## 5     Africa             Burkina Faso  6863443.1
## 6     Africa                  Burundi  4201583.8
## 7     Africa                 Cameroon  8768619.4
## 8     Africa Central African Republic  2292040.7
## 9     Africa                     Chad  4760923.6
## 10    Africa                  Comoros   317133.6
## # ... with 132 more rows
```


__Exercise__: Find the minimum GDP per capita experienced by each country


```r
gapminder %>%
    group_by(country) %>% 
    summarize(mingdp=min(gdpPercap))
```

```
## # A tibble: 142 × 2
##        country     mingdp
##         <fctr>      <dbl>
## 1  Afghanistan   635.3414
## 2      Albania  1601.0561
## 3      Algeria  2449.0082
## 4       Angola  2277.1409
## 5    Argentina  5911.3151
## 6    Australia 10039.5956
## 7      Austria  6137.0765
## 8      Bahrain  9867.0848
## 9   Bangladesh   630.2336
## 10     Belgium  8343.1051
## # ... with 132 more rows
```


__Exercise__: How many years of record does each country have?


```r
gapminder %>%
    group_by(country) %>% 
    summarize(n_distinct(year))
```

```
## # A tibble: 142 × 2
##        country `n_distinct(year)`
##         <fctr>              <int>
## 1  Afghanistan                 12
## 2      Albania                 12
## 3      Algeria                 12
## 4       Angola                 12
## 5    Argentina                 12
## 6    Australia                 12
## 7      Austria                 12
## 8      Bahrain                 12
## 9   Bangladesh                 12
## 10     Belgium                 12
## # ... with 132 more rows
```


__Exercise__: Within Asia, what are the min and max life expectancies experienced in each year?


```r
gapminder %>% 
    filter(continent=="Asia") %>% 
    group_by(year) %>% 
    summarize(minexp=min(lifeExp),
              maxexp=max(lifeExp))
```

```
## # A tibble: 12 × 3
##     year minexp maxexp
##    <int>  <dbl>  <dbl>
## 1   1952 28.801 65.390
## 2   1957 30.332 67.840
## 3   1962 31.997 69.390
## 4   1967 34.020 71.430
## 5   1972 36.088 73.420
## 6   1977 31.220 75.380
## 7   1982 39.854 77.110
## 8   1987 40.822 78.670
## 9   1992 41.674 79.360
## 10  1997 41.763 80.690
## 11  2002 42.129 82.000
## 12  2007 43.828 82.603
```

