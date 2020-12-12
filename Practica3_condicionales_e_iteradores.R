# Practica 3 - Condicionales e Iteradores #
###########################################

# IF-ELSE
if(4>5){
  print("Sí, es verdadero")
}else{
  print("No, no es verdadero")
}

#Condición que depende de 2 variables
num1 <- 15
num2 <- 20

if(num1 < num2){
  print("verdadero")
}else{
  print("Falso")
}

#Condición con 3 variables
num3 <- 50

if(num1 < num2 | num3 < num2){
  print("verdadero")
}else{
  print("Falso")
}

num3 <- 50

if(num1 < num2 & num3 < num2){
  print("verdadero")
}else{
  print("Falso")
}


######################################################
# Ciclos de control FOR

vector_num <- c(1:9)
for(i in vector_num) {
  print("Hola")
}

#otro nombre para el iterador i
for(iterador in vector_num) {
  print("Hola")
}

#Imprimiendo el iterador
for(i in vector_num) {
  print(i)
}

#Concatenando texto con iterador
# usamos la funcion paste y el simbolo , para concatenar
for(i in vector_num) {
  print(paste("iterador",i))
}

#usamos paste0 para no insertar el espacio automatico en la concatenación
for(i in vector_num) {
  print(paste0("iterador",i))
}

