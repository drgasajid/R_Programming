install.packages("plot3D")
library(plot3D)
data("iris")
head(iris)
str(iris)
x <- sep.l <- iris$Sepal.Length
y <- pet.l <- iris$Petal.Length
z <- sep.w <- iris$Sepal.Width

#labels
scatter3D(x, y, z, clab = c("Sepal", "Width (cm)"))
#size of points
scatter3D(x, y, z, colvar = NULL, col = "red",
          pch = 19, cex = 0.5)
help("scatter3D")
scatter3D(x, y, z, colvar = NULL, col = "red",
          pch = 19, cex = 0.5)
#fullbox
scatter3D(x, y, z, bty = "f", colkey = FALSE, main ="bty= 'f'",
          phi = 45)
#change in shape
scatter3D(x, y, z, bty = "f", colkey = FALSE, main ="bty= 'f'",
          phi = 45, pch=18)
#colors
scatter3D(x, y, z, pch = 18, bty = "u", colkey = FALSE, 
          main ="bty= 'u'", col.panel ="#32A852", expand =0.4, 
          col.grid = "#FF00FF")

scatter3D(x, y, z, bty = "g", pch = 18, col = gg.col(25))

scatter3D(x, y, z, bty = "g", pch = 18,
          col = ramp.col(c("blue", "yellow", "red")))

#col variable
scatter3D(x, y, z, bty = "g", pch = 18, 
          col.var = as.integer(iris$Species),
          col = c("#1B9E77", "#D95F02", "#7570B3"),
          pch = 18, ticktype = "detailed",
          colkey = list(at = c(2, 3, 4), side = 1, 
                        addlines = FALSE, length = 0.5, width = 0.5,
                        labels = c("R", "With", "Aammar")))

