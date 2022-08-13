
#Data Wrangling and Data Transformation
install.packages("tidyverse")
install.packages("tidyr")
library(tidyverse)
library(tidyr)
#Summarise Function
x <- mtcars
View(x)
as_tibble(x)
class(x$mpg)

help("summarise")
summarise(x, avg = mean(mpg))
count(x, mpg)
x %>% summarise(avg= mean(mpg))

#group by
mtcars %>%
  group_by(gear) %>%
  summarise(avg = mean(mpg))

#row wise
x <- starwars %>%
  rowwise() %>%
  mutate(film_count = length(films))
View(x)

#Manipulate Data
x1 <- filter(mtcars, mpg > 20)
View(x1)
data(mtcars)
x2 <- distinct(mtcars, gear)

x2 <- slice(mtcars, 21:25)

x2 <- slice_sample(mtcars, n = 10, replace = TRUE)

x2 <- slice_min(mtcars, mpg, prop = 1) #proportion in percet of data

x2 <- slice_head(mtcars, n = 10)
head(mtcars)

#order data
x1 <- arrange(mtcars, mpg) #By default ascending
x2 <- arrange(mtcars, desc(mpg)) #descending
head(x1)
head(x2)

#add rows
data(cars)
cars <- add_row(cars, speed = 20)
cars[is.na(cars)] = 0 #to convert na values into zero

#manipulating variables
x <- pull(mtcars, wt)
x1 <- select(mtcars, mpg, cyl)
x1 <- select(mtcars, mpg:drat)
x1 <- relocate(mtcars, mpg, cyl, .after = last_col())


summarise(mtcars, mean(mpg)) #for only one variable
x1 <- summarise(mtcars, across(everything(), mean)) #across variables

mtcars %>% 
  rowwise() %>% 
  mutate(zzz = (mpg+cyl+disp)/3) #we have to recheck the across functions?

x1 <- mutate(mtcars, gpm = 1 / mpg)
x2 <- transmute(mtcars, gpm = 1 / mpg)  
x1 <- rename(x1, R_with_Aammar = RwithAammar)

#multiple variable manipulation
View(starwars)
starwars <- starwars %>%
            mutate(type = case_when(
            height > 200 | mass > 200 ~ "large",
            species == "Droid" ~ "robot",
            TRUE ~ "other"))
View(starwars)




