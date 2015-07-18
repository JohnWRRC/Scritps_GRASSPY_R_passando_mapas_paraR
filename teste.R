require("rgdal")
require("spgrass6")
require("raster")

raster<-readRAST6("Uso_APA_novo_resist_rast_img")
image(raster)
png(filename="F:/data/john_pc2/raster_testeR.png")
plot(raster)
dev.off()