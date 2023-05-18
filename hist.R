#绘制直方图
hist(mtcars$mpg)
##or
attach(mtcars)
hist(mpg)

hist(mtcars$mpg,col='azure')

hist(mtcars$mpg,breaks = 10,col = 'azure')

hist(mtcars$mpg,
     breaks = c(10,15,25,30,35,40),col = 'azure')

hist(mtcars$mpg,
     breaks = seq(10,40,5),col = 'azure')

hist(mtcars$mpg,
     breaks = 12,
     col = 'azure',
     xlim = c(10,35))

min(mpg)
max(mpg)

hist(mtcars$mpg,
     breaks = seq(10,34,2.4), #自定义组距
     col = 'azure',
     xlim = c(10,35))

hist(mtcars$mpg,
     breaks = c(10,15,20,25,35),
     col = 'azure',
     xlim = c(10,35))

hist(mtcars$mpg,
     col = 'red',
     density = 20, #条纹
     angle = 50, #条纹角度
     border = 'blue',
     main = 'Histogram of MPG',
     xlab = 'Miles Per Gallon',
     ylab = 'Freq',
     cex.main = 1.5) #标题字体大小

hist_value <- hist(mpg)

hist(mtcars$mpg,
     col = 'azure',
     ylim = c(0,14))

text(hist_value$mids,hist_value$counts,
     labels = hist_value$counts,
     adj = c(0.5,-0.5))

hist(mtcars$mpg,
     col = 'azure',
     freq = FALSE, #代表的是频率
     ylim = c(0,0.1))

lines(density(mpg), col = 2, lwd = 4)

