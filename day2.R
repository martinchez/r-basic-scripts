data(cars)
head(cars)
plot(cars)
plot(cars, xlab='Speed', ylab='', pch=20, cex=2, col='red', xlim = c(0,27), ylim=c(0,125), axes=FALSE, xaxs="i", yaxs="i")
axis(1)
axis(2, las=1)
text(5, 100, 'Cars!', cex=2, col='blue')
par(xpd=NA)
text(-1, 133, 'Distance\n(feet)')


data(iris)
str(iris)
summary(iris)
plot(iris$Sepal.Length,iris$Sepal.Width, type = 'p')
mycolor <- c("red","green3","blue")[as.factor(iris$Species)]
plot(iris$Petal.Length, iris$Petal.Width, pch = 8, col = mycolor,
     main = "Edgar Anderson's Iris Data", xlab = "Petal Length", ylab = "Petal Width")
legend('topright', legend = unique(iris$Species), col = c("red","green3","blue"), pch = 8)

par(mfrow=c(2,2))
boxplot(iris$Sepal.Length~iris$Species, main = "Boxplot of Sepal Length",
        xlab = "Species", ylab = "Sepal Length", col = c("red","green3","blue"),
        cex.lab = 1.25)
hist(iris$Sepal.Length, main = "Histogram of Sepal Length",
     xlab = "Sepal Length", ylab = "Frequency", col = c("grey"), cex.lab = 1.25)
plot(iris$Sepal.Length, type = 'l', lty = 2, lwd = 2, col = 'red',
     main = "Variation with of Petal Width and Petal Length",
     xlab = "Petal Length", ylab = "Petal Width", cex.lab = 1.25)
plot(iris$Petal.Length, iris$Petal.Width, pch = 8, col = mycolor,
     main = "Scatter plot of Petal Width and Petal Length",
     xlab = "Petal Length", ylab = "Petal Width", cex.lab = 1.25)























head(cars)
m<- lm(dist~speed, data=cars)
m
run




name <- LETTERS[1:10]
longitude <- c(-116.7, -120.4, -116.7, -113.5, -115.5,
               -120.8, -119.5, -113.7, -113.7, -110.7)
latitude <- c(45.3, 42.6, 38.9, 42.1, 35.7, 38.9,
              36.2, 39, 41.6, 36.9)
stations <- cbind(longitude, latitude)
# Simulated rainfall data
set.seed(0)
precip <- round((runif(length(latitude))*10)^3)
psize <- 1 + precip/500
plot(stations, cex=psize, pch=20, col='red', main='Precipitation')
# add names to plot
text(stations, name, pos=4)
# add a legend
breaks <- c(100, 250, 500, 1000)
legend.psize <- 1+breaks/500
legend("topright", legend=breaks, pch=20, pt.cex=legend.psize, col='red', bg='gray')
