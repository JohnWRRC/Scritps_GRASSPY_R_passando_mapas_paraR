install.packages("rgdal")
install.packages("spgrass6")
install.packages("raster")

require("spgrass6")
require("raster")
require("rgdal")

G <- gmeta6()
my<-readRAST6("Uso_APA_novo_resist_rast_img")
my<-("Uso_APA_novo_resist_rast_img")
image(my)
position<-1:ncell(my)
position.mask<-position[!is.na(my@data)]
position.mask<-subset(position.mask, position.mask>0)
position.mask.aleat<-sample(position.mask, replace=F)
my2<-my
my2@data[position.mask,1]<-my@data[position.mask.aleat,1]
writeRAST6(my2, "my2",overwrite=T)












