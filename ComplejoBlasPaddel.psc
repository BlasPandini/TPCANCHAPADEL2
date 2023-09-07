Algoritmo SOMOSPADDEL
	
	Dimension turnos[10] 
	Dimension dias[7] 
	Dimension horas[5] 
	Definir diaElegido, horaElegida como cadena
	Definir opcionMenu, cantTurno como Entero
	Definir cantPaletas, cantPelotas como Entero
	
	Repetir //Menú
		escribir "BIENVENIDOS A SOMOS PADDEL ¿En qué te podemos ayudar?"
		escribir "1. Reservar turnos"
		escribir "2. Reservar paleta (cantidad que necesitan para el turno)"
		escribir "3. Reservar pelotas PENN Nuevas"
		escribir "4.Salir"
		Leer menuPrincipal
		
		Si menuPrincipal=1 Entonces
			
			dias[1] <- "Lunes "
			dias[2] <- "Martes "
			dias[3] <- "Miércoles "
			dias[4] <- "Jueves "
			dias[5] <- "Viernes "
			dias[6] <- "Sábado "
			dias[7] <- "Domingo "
			
			horas[1] <- "8:00 AM - 9:30 AM"
			horas[2] <- "10:00 AM - 12:00 PM"
			horas[3] <- "2:00 PM - 4:00 PM"
			horas[4] <- "5:00 PM - 7:00 PM"
			horas[5] <- "8:00 PM - 10:00 PM"
			
			cantTurno<-1 
			
			Repetir //Programación de cada una de las opciones
				Mostrar "Seleccione el día para el turno:"
				Para i <- 1 Hasta 7
					Mostrar i, ". ", dias[i]
				Fin Para
				Leer diaElegido
				
				Mostrar "Seleccione la hora para el turno:"
				Para i <- 1 Hasta 5
					Mostrar i, ". ", horas[i]
				Fin Para
				Leer horaElegida
				
				turnoElegido<-concatenar(diaElegido,horaElegida) 
				Si cantTurno=1 entonces 		
					turnos[cantTurno]<-turnoElegido	
					Mostrar "Turno reservado exitosamente."
				Sino
					Existe<- Falso 
					Para i<-1 Hasta cantTurno Hacer
						Si turnos[i]=turnoelegido Entonces 
							Existe<-Verdadero
						FinSi
					FinPara
					Si Existe entonces
						Mostrar "El turno seleccionado ya está reservado! Por favor, elija otro!!!"
					SiNo
						turnos[cantTurno]<-turnoElegido	
						Mostrar "Turno reservado.Te esperamos en las mejores canchas de Olavarría!!!"
					FinSi
				FinSi
				cantTurno<-cantTurno+1
				Mostrar "¿Desea reservar otro turno? (1: Sí / 0: No)"
				Leer opcionMenu
			Hasta que opcionMenu = 0	
			Mostrar "Lista de turnos ingresados:"
			Para i <- 1 Hasta cantTurno-1 
				xdias<-subcadena(turnos[i],1,1)
				xhoras<-subcadena(turnos[i],2,2)
				Mostrar dias[xdias]," ",horas[xhoras]
			Fin Para		
		FinSi		
		
		Si menuPrincipal=2 Entonces
			cantPaletas <- 0
			
			Repetir
				Mostrar "Cantidad paletas: "
				Leer cantPaletas
				escribir "Paletas reservadas: " , cantPaletas
			Hasta que opcionMenu = 0
		FinSi
		Si menuPrincipal= 3 Entonces
			cantPelotas <- 0
			Repetir
				Mostrar "Cantidad de Pelotas a reservar: "
				Leer cantPelotas
				escribir "Pelotas reservadas: ", cantPelotas
			Hasta Que opcionMenu=0
			FinSi
		Si menuPrincipal=4
			escribir "MUCHAS GRACIAS POR USAR NUESTRA WEB!!! Seguinos en nuestras redes @SomosPaddel y etiquetanos en tus historias!!!"
			escribir "TICKET FINAL -=-=-=-=- TICKET FINAL "
			escribir "Día: ", dias[diaElegido]
			escribir "Hora: ", horas[horaElegida]
			escribir  "Paletas reservadas: ", cantPaletas
			escribir "Pelotas reservadas: ", cantPelotas
			escribir "------------------------------------"
		FinSi
		Si menuPrincipal <>1 Y  menuPrincipal <>2 Y  menuPrincipal <>3 Y menuPrincipal <>4 Entonces
			escribir "Opción fallida, recuerde que los comandos aceptados son del 1 al 4. Arranquemos de nuevo!"
		FinSi
	Hasta Que menuPrincipal=4
FinAlgoritmo