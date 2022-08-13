#Built in data sets in R-------
data()
View(BOD)
View(CO2)
View(mtcars)
View(airquality)
View(PlantGrowth)
View(DNase)

str(CO2)
head(CO2)
names(CO2)
nrow(CO2)
ncol(CO2)
#always make your data columns in small letter and without any space rather use _
#do not use dot inside a name, always use underscore

#exporting builtin data sets as excel file-----
install.packages("writexl")
library(writexl)
write_xlsx(CO2, path = "")
help("writexl")
#ggplot2 tips and tricks-----
install.packages("ggplot2")
library(ggplot2)
ggplot(data = trees, mapping = aes(x=trees$Girth,y=trees$Height))+
  geom_point()+geom_smooth(method = "lm")

ggplot(trees, aes(trees$Girth, trees$Volume))+ geom_line()+ geom_point()+
  geom_smooth(method = "lm")

ggplot(trees, aes(x= trees$Volume, y=trees$Height))+geom_point()+geom_line()+
  geom_smooth(method = "lm")+
  labs(title = "Trees", x="Volume (cm^3)", y= "Height (cm)")

plot1 <- ggplot(trees, aes(x= trees$Volume, y=trees$Height))+geom_point()+geom_line()+
  geom_smooth(method = "lm")+
  labs(title = "Trees", x="Volume (cm^3)", y= "Height (cm)")
  
plot1+ggsave("plot1.tiff")
plot1+ggsave("plot1.tiff", units = "in", width = 8, height = 6, dpi = 600, compression='lzw')
plot1+coord_flip()

#scatter plots in R------
x <- cars
View(x)
ggplot(x, aes(x$speed, x$dist))+geom_point()+
  geom_smooth(method = "lm", se=T, level=0.75)
#scatter plots with multiple line
ggplot(Orange, aes(Orange$age, Orange$circumference, col=Orange$Tree))+
  geom_point(size=5, alpha=0.75, shape=18)
#change in shape
ggplot(Orange, aes(Orange$age, Orange$circumference, shape=Orange$Tree))+
  geom_point(size=5, alpha=0.75)
#change in shize
ggplot(Orange, aes(Orange$age, Orange$circumference, col=Orange$Tree))+
  geom_point(size=10, alpha=0.6)+
  labs(title = "Orange", x="Age", y= "Circumference", col="Tree Type")

ggplot(Orange, aes(Orange$age, Orange$circumference))+
  geom_point(size=4, alpha=0.6)+
  geom_line(aes(linetype=Orange$Tree), size=1)
#geomline
ggplot(Orange, aes(Orange$age, Orange$circumference, col=Orange$Tree))+
  geom_line()+
  labs(title = "Orange", x="Age", y= "Circumference", col="Tree Type")
#boxplot not scatter plot
ggplot(Orange, aes(Orange$age, Orange$circumference, fill=Orange$Tree))+
  geom_boxplot()
#bubbleplot
install.packages("viridis")
library(viridis)
x <- quakes
nrow(x)
sample_x <- x[seq(from= 1, to= 1000, by=10),]
nrow(sample_x)
ggplot(sample_x, aes(lat, long))+
  geom_point(aes(size=mag, col=mag))+guides(size=FALSE)+
  scale_colour_viridis_b(option = "B")+
  scale_size_continuous(range = c(1,9))+
  labs(x="Latitude", y="Longitude", title="Graph")+
  ggsave("bubbleplot.pdf")






#violin plots in R------------
#heatmaps in R------
#Openbox surprizes-------
