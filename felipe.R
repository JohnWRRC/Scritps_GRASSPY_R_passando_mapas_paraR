require("spgrass6")
require("raster")
require("rgdal")




setwd("F:\\data\\john_pc2\\teste_grass-R")
my<-raster("Uso_APA_novo_resist_rast.img")

image(my)
class_p<-matrix()

#class_p$real<-str(table(my2@data))

n_cells<-nrow(my2@data)

random_val<-sample(rnorm(n_cells),replace=F) 

quant<-c(0.3,1)

quant_val<-quantile(random_val, probs=quant)

quant_mat<-ifelse(random_val<=quant_val[1],1,2)

matrix_class<-subset(quant_mat, quant_mat>1)




table(quant_mat)

y<-ifelse(rand_hab==x[1],1,2)

x <- rnorm(1000)
## cut into quartiles
quartiles <- quantcut( x )
table(y)

install.packages("gtools")
require(gtools)
position<-1:ncell(my)
position.mask<-position[!is.na(my@data)]
position.mask<-subset(position.mask, position.mask>0)
position.mask.aleat<-sample(position.mask, replace=F)
my2<-my
my2@data[position.mask,1]<-my@data[position.mask.aleat,1]
writeRAST6(my2, "my2",overwrite=T)
table(my2@data)

?runif











