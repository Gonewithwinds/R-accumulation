install.packages("tidyverse")
library(tidyverse)
library(ggplot2)

data(mpg)

plot(mpg$displ[mpg$cyl == 4], mpg$cty[mpg$cyl == 4],
     pch = 8, #pch代表不同的图标
     col = "blue",
     las = 1,
     main = "City Miles per Gallon & Engine Displacement",
     xlab = "Engine displacement",
     ylab = "City Miles per Gallon",
     cex.main = 1.2,
     cex.lab = 1.2,
     cex.axis = 1.2,
     font.main = 2,
     font.lab = 1,
     font.axis = 2,
     xlim = c(0,8),
     ylim = c(0,40),
     xaxt = "n",
     yaxt = "n")

axis(1, at = seq(0,8,1), labels = seq(0,8,1)) #设置额外的刻度 x
axis(2, at = seq(0,40,2), labels = seq(0,40,2), las = 1) #设置额外的刻度 y


#分组散点图
points(mpg$displ[mpg$cyl == 5], mpg$cty[mpg$cyl == 5],
       pch = 8,
       col = "purple")

points(mpg$displ[mpg$cyl == 6], mpg$cty[mpg$cyl == 6],
       pch = 8,
       col = "red")

points(mpg$displ[mpg$cyl == 8], mpg$cty[mpg$cyl == 8],
       pch = 8,
       col = "green")

legend(6,35,
       legend = c("4 cylinders","5 cylinders","6 cylinders","8 cylinders"),
       pch = c(8,8,8,8),
       col = c("blue","purple","red","green"),
       cex = 0.8,
       bty = "n")

