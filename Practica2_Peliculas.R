###################################################
##### PRACTICA 1 - Lista de Películas
##################################################


#nombre de 3 películas en un vector con datos tipo char
nombre_pelicuas <- c("The Call","Los Simpson", "Mosul")

#verificamos el tipo de dato
class(nombre_pelicuas)


#calificación de 3 películas en un vector con datos tipo numeric
calificacion_peliculas <- c(5.9, 8.6, 5.9)

#verificamos el tipo de dato
class(calificacion_peliculas)


#año de 3 películas en un vector con datos tipo entero
anio_peliculas <- c(2020L, 1989L, 2019L)

#verificamos el tipo de dato
class(anio_peliculas)


#críticas de 3 películas en un vector con datos tipo char
critica_peliculas <- c("En cuanto a la dirección artística y ambientación, las producciones de Netflix acostumbran a cuidar bastante estos aspectos, lo cual es de agradecer, pero, en este caso, no logran salvar el aprobado. A pesar de todo, existen planos destacables y algunos juegos de luces correctos que corrigen la mediocridad de la ciencia ficción que sugiere la cinta.",
                       "There is a constant sense of surprise — a wily exuberance — about THE SIMPSONS (Fox, Sundays, 8-8:30 p.m.) that still hasn’t abated after eight seasons: This is one of the sharpest, most purely pleasurable television series ever. What began in 1987 (as animated filler between sketches on The Tracey Ullman Show) has become one of the medium’s most dependable entertainments, a cartoon that transcended cartoonishness a long time ago.",
                       "\"Basada en hechos reales\", pone al comienzo. Y debe ser cierto, porque pocas guerras han sido tan viciosas y mortíferas como la que se libró hace poco tiempo contra el siniestro grupo yihadista del ISIS. Yo hice un esfuerzo por contar la cantidad de disparos que se efectúan en esta peli (sólo por parte del equipo de los SWAP, los buenos), y lo tuve que dejar cuando ya iba por el 1.765... y creo que luego hay, por lo menos, otros tantos.Demasiados, para una sola peli. Más propio de un video-juego. Eso sí: el paisaje desolador de la ciudad de Mosul arrasada, impresiona de verdad.")

#verificamos el tipo de dato
class(critica_peliculas)


#Si te gusta la película en un vector con datos tipo lógico
gusto_peliculas <- c(T, TRUE, F)

#verificamos el tipo de dato
class(gusto_peliculas)


#Creación de la lista de vectores
lista_peliculas <- list(nombre_pelicuas,
                        calificacion_peliculas,
                        anio_peliculas,
                        critica_peliculas,
                        gusto_peliculas)



#  Estructuras Bidimensionales (DataFrame) #
############################################


#Para crear a partir de listas usamos la funcion as.data.frame()
#se necesitan 3 parametros:
# x=lista de vectores

df_peliculas <- as.data.frame(lista_peliculas)
df_peliculas
#podemos renombrar los nombres de cada columna
colnames(df_peliculas) <- c("Pelicula", "Calificacion", "Año", "critica", "Gustó")


#exportamos a un csv
write.csv(df_peliculas, "peliculas_criticas.csv")

#si queremos indicar el directorio
# file.choose()
# write.csv(df_peliculas, "C:\\user......\peliculas.csv")


#  Estructuras Bidimensionales (DataFrame) #
############################################


#Para crear a partir de listas usamos la funcion as.data.frame()
#se necesitan 3 parametros:
# x=lista de vectores

df_peliculas <- as.data.frame(lista_peliculas)
df_peliculas
#podemos renombrar los nombres de cada columna
colnames(df_peliculas) <- c("Pelicula", "Calificacion", "Año", "critica", "Gustó")


#exportamos a un csv
write.csv(df_peliculas, "peliculas_criticas.csv")

#si queremos indicar el directorio
# file.choose()
# write.csv(df_peliculas, "C:\\user......\peliculas.csv")


