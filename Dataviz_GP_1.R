

#Dumbbell chart

#1. Install all packages 

if(!'dplyr'%in%installed.packages()){
  install.packages('dplyr')
}


if(!'tidyr'%in%installed.packages()){
  install.packages('tidyr')
}

if(!'scales'%in%installed.packages()){
  install.packages('scales')
}


if(!'ggalt'%in%installed.packages()){
  install.packages('ggalt')
}


if(!'ggplot2'%in%installed.packages()){
  install.packages('ggplot2')
}

if(!'ggtheme'%in%installed.packages()){
  install.packages('ggtheme')
}



#1. Connect with the libaries 
library(dplyr)
library(tidyr)
library(scales)
library(ggplot2)
library(ggalt)
library(ggthemes)

#2. Load and read the data 

potatoes <- read.csv("https://gist.githubusercontent.com/geraldwal/c631f71fd2f89b080ea66ce41752bbd5/raw/81f4b4f0c85ccfd411693be099f4d91a8f35ce0b/Data%2520Viz%2520Project%2520Code%2520Group%2520D")
head(potatoes, n=10)

prices_at_start_end <- read.csv("https://gist.githubusercontent.com/francescamanoni/f3c901e6dad634c29d12a07730745972/raw/657a1cc1e5bd0a9ebeb5c8907d2c7cf7d3ca2481/Dumbbell%2520Chart%2520-%25202010-2015")
head(prices_at_start_end, n=10)


#5. Create the chart

ggplot(prices_at_start_end, aes(x=Start, xend=End, y=Country, group=Country)) + 
geom_dumbbell(colour="mediumseagreen", size=0.5, colour_x = "mediumseagreen", colour_xend="purple4", size_x= 3, size_xend = 3, 
dot_guide=TRUE, dot_guide_size=0.5, dot_guide_colour = "grey") + theme_tufte() 
















