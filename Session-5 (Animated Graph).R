install.packages("ggplot2")
install.packages('gganimate')
library(ggplot2)
library(gganimate)
install.packages("gifski")
install.packages('av')
library(gifski)
library(av)
data()
install.packages("gapminder")
library(gapminder)
head(gapminder)
nrow(gapminder)

ggplot(gapminder, aes(gdpPercap, lifeExp))+geom_point() #simple graph

ggplot(gapminder, aes(gdpPercap, lifeExp,size=pop))+geom_point() #size of pop

ggplot(gapminder, aes(gdpPercap, lifeExp,size=pop, col=country))+
  geom_point(show.legend = F) #colour code by country

ggplot(gapminder, aes(gdpPercap, lifeExp,size=pop, col=country))+
  geom_point(show.legend = F, alpha=0.8)
#color change for beauty
install.packages("viridis")
library(viridis)
AN1<- ggplot(gapminder, aes(gdpPercap, lifeExp,size=pop, col=country))+
  geom_point(show.legend = F, alpha=0.8)+
  scale_colour_viridis_d()+
  scale_size(c(1,11))+
  scale_x_log10()+
  labs(title = "Year: {frame_time}", x="GDP per Capita", 
       y="Life Expectency")+
  transition_time((year))+ease_aes("linear")
AN1
animate(AN1, duration = 10, fps = 20, width = 200, height = 200, renderer = gifski_renderer())
anim_save("output.gif")




