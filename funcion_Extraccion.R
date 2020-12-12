
#Función para extraer unformación se manda a llamar desde la Práctica 5
extraccion_De_bases <- function(){
  #Creamos un elemento vacío
  base_De_bases <-list()
  
  #Creamos un ciclo iterador con longitud 1 a 5
  for (i in 1:5){
    #Almacenamos cada una de las bases de forma automática, aquí la función paste0 nos ayuda a pegar la dirección e iterar en la base de datos
    base_De_bases[[i]] <- read.csv(paste0("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/base",i,".csv"))
    
    #Print solo muestra lo que debe imprimirse (osea la dirección de la base de datos cuyo iteradr i es el que debe cambiar)
    print(paste0("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/base",i,".csv"))
    
  }
  return(base_De_bases)
  
} 


