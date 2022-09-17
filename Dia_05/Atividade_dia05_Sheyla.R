install.packages("dplyr")
library(dplyr)

setwd("G:/Meu Drive/Fábrica de Software/Workshop/Workshop-dados/Dia_05")

data = read.csv("world_population.csv", sep=",", encoding = "UTF-8")

dim(data)

names(data)


data = rename(data, País = Country)

data = rename(data, População_2022 = X2022.Population)

data = rename(data, Continente = Continent)




