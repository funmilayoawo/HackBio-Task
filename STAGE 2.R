read.delim("https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/datasets/pca_sc_dataset.dat")
data.csv <-read.delim("https://raw.githubusercontent.com/HackBio-Internship/public_datasets/main/R/datasets/pca_sc_dataset.dat")
View(data.csv)
mydata.csv<-data.csv[,c(4:15)]
data.csv.pca<-prcomp(mydata.csv, center = TRUE, scale. = TRUE)
class(data.csv.pca)
View(data.csv.pca)
print(data.csv.pca)
summary(data.csv.pca)
install.packages("devtools")
library(devtools)
install.packages("usethis")
install_github('vqv/ggbiplot')
library(ggbiplot)
ggbiplot(data.csv.pca)
ggbiplot(data.csv.pca, labels = rownames(data.csv))
install.packages(c("factoextra", "FactoMineR"))
library("factoextra")
library("FactoMineR")
pca.data <- PCA(data.csv[,-2], scale.unit = TRUE, graph = FALSE)

fviz_eig(data.csv.pca, addlabels = TRUE, ylim = c(0, 70))
fviz_pca_var(data.csv.pca, col.var = "cos2",
             gradient.cols = c("#FFCC00", "#CC9933", "#660033", "#330033"),
             repel = TRUE)
data.csv.pca <- PCA(t(mydata.csv[,-1]), scale.unit = TRUE, graph = FALSE)
fviz_pca_ind(data.csv.pca, col.ind = "cos2", 
             gradient.cols = c("#FFCC00", "#CC9933", "#660033", "#330033"), 
             repel = TRUE)
devtools::install_github("kassambara/ggpubr")
library(ggpubr) 
a <- fviz_pca_ind(data.csv.pca, col.ind = "cos2", 
                  gradient.cols = c("#FFCC00", "#CC9933", "#660033", "#330033"), 
                  repel = TRUE)
ggpar(a,
      title = "Principal Component Analysis",
      xlab = "PC1", ylab = "PC2",
      legend.title = "Cos2", legend.position = "top",
      ggtheme = theme_minimal())
data.csv$lineage <- as.factor(data.csv$lineage)
install.packages("RColorBrewer")
library(RColorBrewer)
nb.cols <- 3
mycolors <- colorRampPalette(brewer.pal(3, "Set1"))(nb.cols)
a <- fviz_pca_ind(data.csv.pca, col.ind = data.csv$lineage,
                  palette = mycolors, addEllipses = TRUE)
ggpar(a,
      title = "Principal Component Analysis",
      xlab = "PC1", ylab = "PC2",
      legend.title = "Cell type", legend.position = "top",
      ggtheme = theme_minimal())
