#                 PRACTICA 5                  #
#           Elaboró: Hugo Camacho             #
#   Procesamiento estadístico de datos con R  #
###############################################

#DEclaramos la librería
library(plyr)

#Supongamos que hemos completado el código de la sesión anterior y hemos creado una base de datos con algunos pacientes...
#Estos registros se almacenan en estructuras de tipo vector
nombre_paciente <- c("ALAN", "GERARDO", "GUSTAVO", "SOFIA", "AMANDA")
edad_paciente <- c(34,55,65,56,34)
sexo_paciente <- c("M", "M", "M","F","F")

paciente_diabetico <- c("S","S","N","N","N")
paciente_hipertenso <-c ("S","N","N","S","N")
paciente_obesidad <- c("S","N","N","S","N")

#Formamos una lista con cada elemento vector
pacientes <- list(nombre_paciente, edad_paciente,sexo_paciente, paciente_diabetico, paciente_hipertenso,paciente_obesidad)

#Convertimos a Dataframe y mediante la función colnames, asignamos los nombres de cada variable
pacientes <- as.data.frame(pacientes)
colnames(pacientes) <- c("Nombre Paciente", "Edad Paciente", "Sexo paciente", "Paciente diabético", "Paciente Hipertenso", "Paciente Obesidad")
#Escribimos el documento en un formato csv, separado por comas
write.csv(pacientes, "Base1.csv", row.names = F)

################################################################################
# #####  Practica 5.1
################################################################################

#Supongamos que nuestro equipo de trabajo ha reunido una base de datos con 100 registros (100 pacientes)
#Cada participante ha creado una base con pacientes diferente pero misma estructura de variables

#Método 1 (manual)
# Extracción de bases de datos manuales (se cargan desde la web de Github) y se almacenan en bases de datos independientes
base1 <- read.csv("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/base1.csv")
base2 <- read.csv("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/base2.csv")
base3 <- read.csv("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/base3.csv")
base4 <- read.csv("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/base4.csv")
base5 <- read.csv("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/base5.csv")

#Crear una lista de DataFrames
Bases_lista <- list(base1,base2,base3,base4,base5)

#Crear una DataFrame con  las listas (plyr) (Tidyverse - dplyr)
#Unificar bases de datos
pacientes_dataframe <- rbind.fill(Bases_lista)

################################################################################
### Tema Funciones (Ejemplo) ###################################################
#### Función para realizar operaciones  
resultados[i] <- resultados(i,4)

resultados <- function(numero1, numero2){
  
  suma <- numero1+numero2
  resta <- numero1-numero2
  multiplicacion <- numero1*numero2
  division <- numero1/numero2
  
  resultados <- list(suma, resta, multiplicacion, division)
  return(resultados)
}
#################################################################################

### Obtenemos masivamente las bases de datos
#Creamos una nueva función para extraer bases, esta debe almacenarse en el mismo directorio...

source("funcion_Extraccion.r")
extraccion_De_bases <- extraccion_De_bases()


