read.delim("https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/datasets/pca_sc_dataset.dat")
genedata<-read.delim("https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/datasets/pca_sc_dataset.dat")
mygenedata<-genedata[,c(4:15)]
#hierarchical clustering
hcgenedata<-hclust(d=dist(mygenedata), method = "complete")
plot(hcgenedata)
#K means clustering
View(mygenedata)
cor(mygenedata)
plot(mygenedata$E5.pre.lineage, mygenedata$E4)
plot(mygenedata$TE.1, mygenedata$EPI)
set.seed(102)
genedatak3 <-kmeans(x=mygenedata, center=3)
mygenedata$clusters<-c(genedatak3$cluster)
install.packages("ggplot2")
library("ggplot2")
ggplot(mygenedata, aes(x= E3, y=PE, color= factor(clusters)))+ geom_point()+ theme_bw()
install.packages("useful")
library("useful") 
mygenedata$gene<-genedata$gene
plot(genedatak3, data=mygenedata)
plot(genedatak3, data=mygenedata, class = "gene")
