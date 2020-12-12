#                 PRACTICA 4                  #
#           Elaboró: Hugo Camacho             #
#   Procesamiento estadístico de datos con R  #
###############################################


nombre_paciente <- c()
edad_paciente <- c()
sexo_paciente <- c()

paciente_diabetico <- c()
paciente_hipertenso <- c()
paciente_obesidad <- c()

paciente_temperatura <- c()
paciente_dolor_cabeza <- c()
paciente_dolor_torax <- c()
paciente_dif_respiratoria <- c()

#ciclo iterativo para 2 pacientes
#cuadro de dialogo para capturar texto desde el teclado y que 
#se asigna a una variable
#readline(prompt = "nombre del paciente: ")


#Recolección de datos del paciente

for (i in 1:2) {
#añadimos en nombre_paciente el iterador i para que vaya guardando todos
#los ciclos for
nombre_paciente [i]<- readline(prompt = "Nombre del paciente: ")
edad_paciente [i] <- readline(prompt = "Edad del paciente: ")
sexo_paciente [i] <- readline(prompt = "Sexo del paciente: ")

paciente_diabetico [i] <- readline(prompt = "¿Paciente es diabetico? (S/N)")
paciente_hipertenso [i] <- readline(prompt = "¿Paciente es hipertenso? (S/N)")
paciente_obesidad [i] <- readline(prompt = "¿Paciente es Obeso? (S/N)")
paciente_temperatura [i] <- readline(prompt = "¿Cuál es la temperatura del paciente?")

#Analizamos al paciente de 2 formas distintas:

#Forma 1

  if(edad_paciente[i] >= 60 & paciente_diabetico[i] == "S" & paciente_hipertenso[i] == "S" &
     paciente_obesidad[i] == "S"){
        print(paste("El paciente", nombre_paciente[i], "tiene el riesgo más alto de complicación"))
    }
  if(edad_paciente[i] < 60 & paciente_diabetico[i] == "N" & paciente_hipertenso[i] == "N" &
     paciente_obesidad[i] == "N"){
        print(paste("El paciente", nombre_paciente[i], "tiene el riesgo más bajo de complicación"))
  }

#Forma 2

  if(edad_paciente [i] > 60){
    if(paciente_diabetico [i]== "S"){
      if(paciente_hipertenso[i] == "S"){
        if(paciente_obesidad[i] == "S" | paciente_temperatura[i] > 37.5){
          print("El riesgo de complicación es muy alto")
        }else{
          print("El riesgo de complicación es alto")
        }
      }else{
        print("El riesgo de complicación es moderado")
      }
    }else{
      print("El riesgo de complicación es bajo")
    }
  }else{
    print("El riesgo de complicación por edad es bajo")
  }
  
}


# Nota para el profesor: Las formas de analisis las cree sólo para mostrar el uso de IF.







