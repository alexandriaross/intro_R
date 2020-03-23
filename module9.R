library(reader)
library(ggplot2)
library(lattice)

library(readr)
bigcity <- read_csv("C:/Users/aross4/Desktop/R Folder/bigcity.csv")
View(bigcity)

Davis <- read_csv("C:/Users/aross4/Desktop/R Folder/Davis.csv")
View(Davis)

Florida <- read_csv("C:/Users/aross4/Desktop/R Folder/Florida.csv")
View(Florida)

plot(bigcity)

plot(Florida[,5])
#plot(Florida[,5],type="1")
plot(Davis[,5])
plot_city <-ggplot(bigcity, aes(x=x, y=u)) + geom_point()
plot_city

plot_Davis <-ggplot(Davis, aes(x=height, y=weight)) + geom_point()
plot_Davis

plot_Davis2 <-ggplot(Davis, aes(x=height, y=weight)) + 
  geom_point(col="steelblue", size=1) +   # Set static color and size for points
  geom_smooth(method="lm", col="firebrick") +  # change the color of line
  #coord_cartesian(xlim=c(0, 250), ylim=c(0, 175)) + 
  labs(title="Height vs Weight", subtitle="From Davis dataset", y="Weight", x="Height", caption="Self Report of Height and Weight")
plot_Davis2


plot_Davis3 <- ggplot(Davis, aes(x=height, y=weight)) + 
  geom_point(aes(col=sex), size=1) +  # Set color to vary based on state categories.
  geom_smooth(method="lm", col="firebrick", size=1) + 
  #coord_cartesian(xlim=c(0, 300), ylim=c(0, 200)) + 
  labs(title="Height vs Weight", subtitle="From Davis dataset", y="Weight", x="Height", caption="Self Report of Height and Weight")
plot(plot_Davis3)

xyplot(weight~height, data=Davis, pch=".")

plot_Davis4 <-xyplot(weight~height, data=Davis, pch=".",
       main="Scatterplot Weight to Height",
       ylab="Weight", xlab="Height",
scales = list(x = list(log = 10, equispaced.log = FALSE)),
group = sex , auto.key = TRUE)
plot(plot_Davis4)

histogram(~height,data=Davis,
          type="density",
          xlab="Height (inches?)",
          main="Self Reported Height")

plot_Davis5 <-xyplot(weight ~ height | sex, data=Davis, pch=".",
       group = sex,
       scales = list(x = list(log = 10, equispaced.log = FALSE)),
       par.settings = list(superpose.symbol = list(pch = 19, cex = 1.5,
                                                   col = c("orange", "blue"))))
plot(plot_Davis5)

plot_Davis6 <-xyplot(repwt ~ repht | sex, data=Davis, pch=".",
       group = sex,
       scales = list(x = list(log = 10, equispaced.log = FALSE)),
par.settings = list(superpose.line = list(col = c("orange", "blue",
                                          lwd = 2))))
plot(plot_Davis6)
