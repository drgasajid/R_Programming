#plotting in Rstudio
iris
x <- iris
y <- iris3
summary(x)
View(x)
plot(x)
boxplot(x$Species ~ x$Sepal.Length)
boxplot(x$Petal.Length ~ x$Species)
boxplot(x$Petal.Width ~ x$Species)
summary(x$Petal.Width)
barplot(x$Species , x$Sepal.Length)
help("barplot")
x <- iris
barplot(x$Petal.Length, width = 1) # to divide in groups?
hist(x$Sepal.Width)
hist(x$Petal.Length)
plot(x$Petal.Width) #scatter plot
plot(x$Sepal.Length, x$Sepal.Width)

#package for colors
install.packages("RColorBrewer")
library(RColorBrewer)
hist(x$Sepal.Length, col=brewer.pal(8,"Greens"),main="Greens 8 colors")
plot(x$Sepal.Length, col=brewer.pal(8,"Greens"),main="Greens 8 colors")
plot(x$Sepal.Length, col=brewer.pal(8,"Greens"),main="Greens 8 colors")


#plotting with ggplot2
install.packages("ggplot2")
library(ggplot2)
help("ggplot")
x <- iris
ggplot(data = x, aes(x=x$Species, y=x$Sepal.Length, fill=x$Species))+
  geom_boxplot()+
  labs(title = "Bar plot of Iris", x="Species", y="Sepal Length (cm)",
                      fill="Species")

#barplot
ggplot(data = x, aes(x=x$Species, y=x$Sepal.Length, fill=x$Species))+
  geom_bar(position="dodge", stat="identity")+
  facet_wrap(~x$Species)+ 
  labs(title = "Bar plot of Iris", x="Species", y="Sepal Length (cm)",
       fill="Species")



