library(tidyverse)
library(wesanderson)
library(ggExtra)

iris.graph = ggplot(data = iris, aes(x = Sepal.Length, y = Petal.Length))+
  geom_point(aes(col = Species))+
  labs(x = 'Sepal Length', y = 'Petal Length')+
  theme_bw()+
  scale_color_manual(values = wes_palette('Darjeeling1', n = 6, type ='continuous'))+
  theme(legend.position = 'none')

ggMarginal(iris.graph, margins = 'both', type = 'histogram', groupColour = T,
           groupFill = T, position = 'dodge', bins = 15)

