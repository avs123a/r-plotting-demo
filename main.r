par(mfrow=c(1,1))
#TRIGONOMETHRIC FUNCTIONS

x <- seq(-2*pi,2*pi);
y <- sin(x);
plot(x,y,type='p',xlab='x',ylab='sin(x)'); #point line
plot(x,y,type="l",xlab='x',ylab='sin(x)'); #common line

y <- cos(x);
plot(x,y,type="o",xlab='x',ylab='cos(x)'); #overplotted points and lines
plot(x,y,type="S",xlab='x',ylab='cos(x)'); #stair steps

x <- seq(-1*pi,pi);
y <- tan(x);
plot(x,y,type="h",xlab='x',ylab='tg(x)'); #histogram-like vertical lines

# #import airquality dataset
library(datasets)
data(airquality)
print(airquality)


# #temperature histogramm
hist (airquality$Temp,
	main="Maximum daily temperature",
	xlab="Temperature(Fahrenheit)",
	xlim=c(50,100),
	col="darkblue",
	freq=FALSE)

legend("topright", 
       c("temperature"), 
       lty=c(1), 
       col="darkblue", 
       bty = "n")


plot(airquality$Temp, col="green", pch =19)


#4
x <- stats::runif(7); y <- stats::rnorm(7)
i <- order(x, y); x <- x[i]; y <- y[i]
plot(x, y, main = "Task 4")
s <- seq(length(x)-1)
arrows(x[s], y[s], x[s+1], y[s+1], col= 1:3)
s <- s[-length(s)]
segments(x[s], y[s], x[s+2], y[s+2], col= 'yellow')
