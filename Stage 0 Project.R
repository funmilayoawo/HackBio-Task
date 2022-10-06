31*78
697/41
56765-23
x<-39
y<-14
z<-x-y
sqrt(2345)
log2(48.4252)
Vec1<-c(2,5,8,12,16)
seq(2,100, 3)
x<-c(2,5,8,11,14,17,20,23,26,29,32,35,38,41,44,47,50,53,56,59,62,65,68,71,74,77,80,83,86,89,92,95,98)
x[5]
x[10]
x[15]
x[20]
x[10:30]
mouse_color<-c('purple','red','ýellow','brown')
mouse_weight<-c(23,21,18,16)
data.frame('mouse_color'=mouse_color, 'mouse_weight'=mouse_weight)
mouse_info <-data.frame('mouse_color'=mouse_color, 'mouse_weight'=mouse_weight)
small_file.txt<-read.table('https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/small_file.txt')
View(small_file.txt)
Child_Variants.csv<-read.csv('https://github.com/HackBio-Internship/public_datasets/blob/main/R/Child_Variants.csv?raw=true')
View(Child_Variants.csv)
head(Child_Variants.csv)
mean(Child_Variants.csv$MutantReadPercent)
#let filtered child variant be fcv
fcv<-(Child_Variants.csv>=70)
View(fcv)
# Search google for the “`Iris flower dataset`
iris
xcol<-iris$Sepal.Length
ycol<-iris$Sepal.Width
plot(xcol, ycol, col=factor(iris$Species), pch=21, xlab='sepal length', ylab='sepal width')
levels(iris$Species)<-c('versicolor','setosa','virginica')
legend('topleft', legend=levels(iris$Species), col=1:3, pch=21)
#versicolor
#setosa
zcol<-iris$Petal.Length
wcol<-iris$Petal.Width
plot(zcol, wcol, col=factor(iris$Species), pch=21, zlab='petal length', wlab='petal width')
legend('topleft', legend=levels(iris$Species), col=1:3, pch=21)
#versicolor
#virginica
pairs(iris$Sepal.Length,iris$Sepal.Width)
pairs(iris[1:4], pch = 21, bg = c("red", "green3", "blue")[unclass(iris$Species)])

|#petallength and petalwidth column correlates best      
      
      