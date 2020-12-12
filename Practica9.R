# Practica 9
#############

library(tidyverse)
library(gganimate)
library(gifski)

paises <- read.csv("https://covid19.who.int/WHO-COVID-19-global-data.csv")

colnames(paises) <- c("Fecha_reporte", 
                      "Código", 
                      "País", 
                      "Región", 
                      "Nuevos_casos", 
                      "Casos_acumulados",
                      "Nuevas_defunciones", 
                      "Defunciones_acumuladas")
str(paises)

summary(paises)

class(paises$Región)

unique(paises$Región)

paises$Región <- as.factor(paises$Región)

paises$Región <- factor(paises$Región,
                        levels = c("EMRO", "EURO",  "AFRO",  "WPRO",  "AMRO",  "SEARO", "Other"),
                        labels = c("Mediterraneo Oriental", "Europa", "Africa", "Pacifico", 
                                   "America", "SE de Asia", "Otros"))

par(mfrow = c(1,1))
plot(paises$Región, main = "Regiones de la OMS",
     xlab = "Región",
     ylab = "Frecuencias",
     col = "green")

boxplot(paises$Nuevos_casos~paises$Región)#simbolo  ~ hace una realcion de la variable categorica


##########################################################
# Verbo Dplyr
# %>%  <----- Pipes para unir lineas de codigo usando dplyr. 

paises_filtrado <- paises %>% 
  select(Fecha_reporte, Región, Nuevos_casos) %>% 
  filter(Fecha_reporte == "2020-08-29") %>% 
  arrange(Nuevos_casos)
#
############################################################


paises_filtrado <- paises %>% 
  group_by(Fecha_reporte, Región) %>% 
  summarise(Casos_totales = sum(Nuevos_casos))

#Revisamos el formato de Fecha
class(paises_filtrado$Fecha_reporte)

#Al ser caracter, hay que transformar a fecha. Tomando en cuenta el orden de año, mes y dia en el que esta dado el dato
paises_filtrado$Fecha_reporte <- as.Date(paises_filtrado$Fecha_reporte, format = "%Y-%m-%d")

#Validamos los cambios
class(paises_filtrado$Fecha_reporte)

#Diagrama de cajas
#aes() estetica de ggplot
ggplot(paises_filtrado, 
       aes(x = Fecha_reporte, y = Casos_totales, fill = Región)) + #signo + funciona simial al Pipe
  geom_boxplot()

#Diagrama de lineas

ggplot(paises_filtrado, 
       aes(x = Fecha_reporte, y = Casos_totales, col = Región)) + #signo + funciona simial al Pipe
  geom_line()+
  geom_point()+
  transition_reveal(Fecha_reporte)+
  theme_dark()








