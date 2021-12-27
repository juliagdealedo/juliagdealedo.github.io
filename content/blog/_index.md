---
title: "Elevation profile of Spain in R"
date: 2021-12-27T14:02:16+01:00
draft: false
description: "Have you ever wondered what would be of Spain if you cut it in half?"
---
## From Picos de Europa to Sierra Nevada 

Have you ever wondered what would be of Spain if you cut it in half?
What is there after Despeñaperros?
Who is taller, meseta norte or meseta sur?
How come Ávila is the highest capital province in Spain?!

I did, and here is the result:

![profile](/img/profile_1.png)

_Indeed, after despeñaderos, there is a big hole._


Following the main tips to your elevation profile in R

## Step by step 

1. Download a elevation shapefile (e.g. for Spain: [IGN](http://www.ign.es/web/ign/portal))
2. Download a line shapefile with the trajectory of your profile (e.g. from GIS)
4. Download a world map contour countries
3. Load all to R
4. Convert line to points

    ```r
     # Obtain line elevation values
     line2 <- spTransform(line, "+init=epsg:25830")
     psp <- as.psp.SpatialLines(line2)
     pts <- pointsOnLines(psp, eps=10)
     # Convert to spatial points
     pts1 <- SpatialPoints(coords = cbind(pts$x, pts$y), proj4string = CRS("+init=epsg:25830"))
     pdf_data <- as.data.frame(pts1)
     ```
5. Calculate elevation and distance
     ```r
     pdf_data$dem <- raster::extract(r0, pts1) 
     pdf_data$dist <- seq(0, (nrow(pdf_data)-1)*10, 10)
     pdf_data$dist <- pdf_data$dist/1000 # to km
    ```
6. Plot it with ggplot  

   - `geom_line` with MetPalettes color [Hokusai](https://github.com/BlakeRMills/MetBrewer)
   
   - `geom_label_repel` to add the labels
  
   - `theme_solarized` for background color
   
   - `geom_polygon` to plot the Spain contour

   - `inset_element` to add it to the previous graph


Find here the [full code](https://github.com/juliagdealedo/elevation-profile)



{{< lead >}}
Things I want to share with the world.
{{< /lead >}}
