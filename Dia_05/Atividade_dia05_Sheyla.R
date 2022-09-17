install.packages("dplyr")
install.packages("ggplot2")
library(dplyr)
library(ggplot2)

setwd("G:/Meu Drive/Fábrica de Software/Workshop/Workshop-dados/Dia_05")

data = read.csv("world_population.csv", sep=",", encoding = "UTF-8")

dim(data)

names(data)


data = rename(data, País = Country)
data = rename(data, Continente = Continent)
data = rename(data, Densidade_km = Density..per.km..)
data = rename(data, Área_km = Area..km..)
data = rename(data, População_1970 = X1970.Population)
data = rename(data, População_1980 = X1980.Population)
data = rename(data, População_1990 = X1990.Population)
data = rename(data, População_2000 = X2000.Population)
data = rename(data, População_2010 = X2010.Population)
data = rename(data, População_2015 = X2015.Population)
data = rename(data, População_2020 = X2020.Population)
data = rename(data, População_2022 = X2022.Population)

data$CCA3 = NULL

media_1970 = mean(data$População_1970)
media_1980 = mean(data$População_1980)
media_1990 = mean(data$População_1990)
media_2000 = mean(data$População_2000)
media_2010 = mean(data$População_2010)
media_2015 = mean(data$População_2015)
media_2020 = mean(data$População_2020)
media_2022 = mean(data$População_2022)

ano = c("1970", "1980", "1990", "2000", "2010", "2015", "2020", "2022")
media = c(media_1970, media_1980, media_1990, media_2000, media_2010, media_2015, media_2020, media_2022)

ano_media = data.frame(ano, media)
ano_media

# Frequencia absoluta 
freq_abs = table(ano_media)
View(freq_abs)

# Frequancia relativa
p_freq_rel = 100* prop.table(freq_rel)
View(p_freq_rel)

# Juntando as frequencias relativas e percentuais com suas respectivas somas   
freq_rel = c(freq_rel, sum(freq_rel))
p_freq_rel = c(p_freq_rel, sum(p_freq_rel))




write.table(data, file = "world_population_PÓS.csv", sep = ",")
