#                 PRACTICA 1                  #
#           Elaboró: Hugo Camacho             #
#   Procesamiento estadístico de datos con R  #
###############################################

# 5 Tipos de Variables (atómicas)

# Tipo de dato char
variable_char <- "Hola"

# Función para comprobar que tipo de dato temenos
class(variable_char)

# Tipo de dato numerico
variable_numerica <- 5.36


# Tipo de dato entero 
# Se usa una L al final del valor para indicar que es entero, de otra manera 
#se tomará como numérico
variable_entera <- 10L


# Tipo de dato lógico
# Podemos escribir la palabra completa o solo la inicial TRUE = T , FALSE = F
variable_logica <- FALSE



# Función Vector , se incluye la sintaxis ->  c()
variables_caracteres <- c("a","b","c","d","e")
variables_numericas <- c(3.36568454,2.3,1,0.25,1.5)
Variables_logicas <- c(T,F,FALSE,TRUE,T)
variables_enteras <- c(10L,25L,3L,18L,6L)

# Apuntar a un solo elemento del vector, se usa [] y el numero del 
#elemento del vector
variables_numericas[5]
variables_caracteres[2]

#Función para contar la logitud del vector (cantidad de elementos que tiene)
length(variables_caracteres)

#Almacenar vectores y valores de diferentes datos, se usa -> list()
variables_mixtas <- list(variables_caracteres, variables_numericas,
                         Variables_logicas, variables_enteras)

#También puedes insertar datos sueltos de diferentes tipos
variables_mixtas <- list(variables_caracteres, variables_numericas,
                         Variables_logicas, variables_enteras,"adiós",23L, 5.36)

#Para ver un elemento dentro de un vector que forma parte de la lista (iteraciones)
#el primer numero corresponde al nuvero de vector y el segundo a la posicion
#dentro del elemento
variables_mixtas[[2]][3]





