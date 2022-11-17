---
title: "Reverse and minimal world"
date: 2022-11-16T14:02:16+01:00
draft: false
---
## Reverse and minimal world

Reverse mapping, started by Joaquín Torres García with his _América Invertida_ in 1943, induces us to think in a different and critic point of view 
in which for once, the global north and Europe are not the center. Later, in 1979 Stuart McArthur produced the Universal Corrective Map of the World
Top-south maps to highlight the unrepresentation of the global south.

For a long time I was wondering how to turn maps upside down in R. 
Now I have discovered just to add +axis=esu to the CRS transformation: 

![profile](/img/challenge_final2.png)

## Step by step 

1. Obatain World data
    ```r
     world_data <- ne_countries(scale = "medium", returnclass = "sf")
     ```
2. Get the McArthur projection with: +axis=esu
     ```r 
     mcarthur <- " +proj=robin +datum=WGS84 +no_defs +axis=esu"
     # Transform the data (and simplify polygons)
     world <- world_data %>% st_transform(crs = mcarthur)  %>% rmapshaper::ms_simplify(keep = 0.001)  
    ```
3. Plot it with ggplot  
    ```r 
    # Plot
     ggplot(world)+
     geom_sf(fill = "black", color = "aliceblue")+
     coord_sf()+
     theme_void()+
     theme(panel.grid.major = element_line(), panel.background = element_rect(fill = "black"))+
     annotate(x = 14^3.5, y = -90^3.56, "text", label = "JGA | #30daymapchallenge", 
           size = 2, family="rub", hjust = 0, colour="aliceblue")+
           annotation_north_arrow(location = "tl", which_north = "true", 
                         pad_x = unit(0.25, "in"), pad_y = unit(0.85, "in"),
                         height = unit(1, "cm"),
                         width = unit(1, "cm"),
                         style = north_arrow_fancy_orienteering( text_col = 'white',
                         line_col = 'white', 
                         fill = 'white'), rotation=180) 
    ```

You can find the full code [here]([https://github.com/juliagdealedo/elevation-profile](https://github.com/juliagdealedo/30daychallenges))


Why critical cartography?
Because with regular maps we legitimize and maintain the history of colonialism.

Next is to create an annotation_south_arrow function!
