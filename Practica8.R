# Practica 8 -- Factores  #
###########################

#Cargamos base de datos desde github 
bikes <- read.csv("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/bikes.csv")

#revisamos la estructura de las variables del data frame
str(bikes)

#revisamos la variable fecha de nuestro data frame
str(bikes$dteday)

#resumen de cada variable
summary(bikes)


#revisamos la clase de las variables
class(bikes$season)

#Podemos incluir las 3 graficas en la misma vista, es importante incluir la función antes de plotear.
par(mfrow = c(1,3))

#Convertimos la variable season a factor, asignamos niveles y etiquetas a esos niveles para poder categorizar
bikes$season <- factor(bikes$season,
                       levels = c(1:4),
                       labels = c("Invierno","Primavera","Verano","Otoño"))

#Generamos el gráfico, asignando un título con main, etiqueta eje Y con ylab, eje X con xlab, color en hexadecimal con col
#Si ploteamos sin categorizar, obtenemos un gráfico sin sentido.
#También podemos generar un vector de colores para usarlo en nuestro gráfico
colores <- c("#A9F5F2", "#58FA82", "#BFFF00", "#FFBF00")
plot(bikes$season, main = "Categorías de las estaciones del año",
     xlab = "Temporadas",
     ylab = "Frecuencias",
     col = colores)

#Hacemos lo propio con otra variable, día laboral
#Revisamos el tipo de variable
class(bikes$workingday)
#Reconvertimos la variable
bikes$workingday <- factor(bikes$workingday,
                           levels = c (0,1),
                           labels = c ("No_Laboral", "Laboral")
                           )
plot(bikes$workingday, main = "Categorías por tipo de día",
     xlab = "Temporada",
     ylab = "Frecuencias",
     col = colores)


#Realizamos el mismo procedimiento con la variable de clima
class(bikes$weathersit)

bikes$weathersit <- factor(bikes$weathersit,
                           levels = c (1,2,3),
                           labels = c ("Despejado","Nublado", "Lluvioso")
                           )
plot(bikes$weathersit, main = "Categorías por tipo de clima",
     xlab = "Clima",
     ylab = "Frecuencias",
     col = colores)

#####
# Funciones para realizar subconjuntos de datos en funcion de la variable season y con la condicion season=invierno
# Pero sólo traemos los valores de la variable cnt
#####

invierno <- subset(bikes, season == "Invierno")$cnt
primavera <- subset(bikes, season == "Primavera")$cnt
verano <- subset(bikes, season == "Verano")$cnt
otoño <- subset(bikes, season == "Otoño")$cnt

#cuantitativas mediante un histograma
par(mfrow = c(2,2))
hist(primavera, col = "#58FA82", prob = T)
lines(density(primavera)) # Esto para que es? para dibujar la linea pero por que o  que ????
hist(verano, col = "#BFFF00", prob = T)
lines(density(verano)) 
hist(otoño, col = "#FFBF00", prob = T)
lines(density(otoño)) 
hist(invierno, col = "#A9F5F2", prob = T)
lines(density(invierno)) 


