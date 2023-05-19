#boxplot & barplot

boxplot(mtcars$mpg,
        col = 5,
        ylim = c(0,40))

boxplot(mtcars$mpg[vs == 0],
        col = 6,
        ylim = c(0,40))

boxplot(mtcars$mpg~mtcars$vs,
        col = c(4,5),
        ylim = c(0,40))


table(mtcars$vs)
engine_num <- table(mtcars$vs)
barplot(engine_num,
        ylim = c(0,2),
        xlim = c(0,20),
        col = c(4,5),
        horiz = TRUE)
engine_percent <- table(vs) / 32
barplot(engine_percent)

# Horizontal Barplot

attach(mtcars)

vs.table <- table(vs)

vs.barplot <- barplot(vs.table, col = c(3,4),
                      ylim = c(0,20),
                      main = "Barplot of Engine",
                      names.arg = c("V-shaped", "Straight"), #the names of each column
                      xlab = "Type of Engine",
                      ylab = "Frequency")

text(vs.barplot, vs.table+1.0, labels = vs.table)

vs.barplot <- barplot(vs.table, col = c(3,4),
                      ylim = c(0,8),
                      xlim = c(0,20),
                      #main = "Barplot of Engine",
                      names.arg = c("V-shaped", "Straight"),
                      xlab = "Type of Engine",
                      ylab = "Frequency",
                      horiz = T,
                      las = 1, #label axis style
                      cex.axis = 0.8, #character expansion
                      cex.names = 0.8,
                      cex.lab = 0.9)

text(vs.table+1.0, vs.barplot, labels = vs.table, cex = 0.8)
title(main = "Barplot of Engines", line = -5)


#Barplot decoration

attach(mtcars)
cyl.table <- table(cyl)

cyl.barplot <- barplot(cyl.table,
                     col = c(3,4,5),
                     ylim = c(0,20),
                     main = "Barplot of Number of Cylinders",
                     names.arg = c("4 Cylinders", "6 Cylinders", "8 Cylinders"),
                     space = c(0.8,0.8,0.8), #width can be applied too
                     density = c(10,20,30),
                     angle = c(0,45,90))
text(cyl.barplot, cyl.table+1, labels = cyl.table)
