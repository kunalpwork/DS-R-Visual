
e_quakes<-datasets::quakes

####Top 10 rows and last 10 rows
head(e_quakes,10)
tail(e_quakes,10)
######Columns

e_quakes[,c(1,2)]
df<-e_quakes[,-5]
summary(e_quakes[1,])
e_quakes$depth

###########Summary of the data#########
summary(e_quakes$stations)
summary(e_quakes)
summary(e_quakes$depth)

#####################
plot(e_quakes$depth)
plot(e_quakes$stations,e_quakes$mag,type="p")
plot(e_quakes)
# points and lines 
plot(e_quakes$mag, type= "l") # p: points, l: lines,b: both
plot(e_quakes$mag, xlab = 'No of Instances', 
     ylab = 'Magnitude of Earthquakes', main = 'Magnitude of Earthquakes',
     col = 'blue')


# Horizontal bar plot
barplot(e_quakes$depth, main = 'Depth of Earthquakes',
        ylab = 'Magnitude', col= 'blue',horiz = F,axes=T)


#Histogram
hist(e_quakes$depth)
hist(e_quakes$depth, 
     main = 'Depth of Earthquakes',
     xlab = 'Depth', col='blue')

#Single box plot
boxplot(e_quakes$depth,main="Boxplot")

# Multiple box plots
boxplot(e_quakes[,1:4],main='Multiple')

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")

plot(e_quakes$depth)
plot(e_quakes$long, e_quakes$lat)
plot(e_quakes$depth, type= "l")
plot(e_quakes$mag, type= "l")
plot(e_quakes$stations, type= "l")
barplot(e_quakes$depth, main = 'Depth of Earthquakes',
        xlab = 'Depth', col='green',horiz = TRUE)
hist(e_quakes$stations)
boxplot(e_quakes$stations)
boxplot(e_quakes[,0:4], main='Multiple Box plots')


sd(e_quakes$depth,na.rm = T)
mean(e_quakes$depth,na.rm = T)
