Algoritmo SOMOSPADDEL
	// Para turnos
	Dimension turnos[10] //turnos tomados en la semana
	Dimension dias[7] 
	Dimension horas[5] 
	Definir diaElegido, horaElegida como cadena
	Definir opcionMenu, cantTurno como Entero
	
	// Para catalogo
	Dimension productos[10]
	Definir cantidadProductos como Entero
	
	
	Repetir
		escribir "BIENVENIDOS A SOMOS PADDEL ¿En qué te podemos ayudar?"
		escribir "1. Reservar turnos"
		escribir "2. Reservar paleta (cantidad que necesitan para el turno)"
		escribir "3. Reservar pelotas PENN Nuevas"
		escribir "4.Salir"
		Leer menuPrincipal
		
		// reservar turnos
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
			
			cantTurno<-1 //cantidad de turnos tomados
			
			
			Repetir
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
				
				turnoElegido<-concatenar(diaElegido,horaElegida) // Uno los valores para poder comparar
				Si cantTurno=1 entonces // es el primer turno, no debo compararlo			
					turnos[cantTurno]<-turnoElegido	
					Mostrar "Turno reservado exitosamente."
				Sino
					Existe<- Falso //Es verdadero si encontro un turno duplicado
					Para i<-1 Hasta cantTurno Hacer
						Si turnos[i]=turnoelegido Entonces // si ese turno ya esta en el vector
							Existe<-Verdadero
						FinSi
					FinPara
					Si Existe entonces
						Mostrar "El turno seleccionado ya está ocupado. Por favor, elija otro."
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
			Para i <- 1 Hasta cantTurno-1 // tengo que restar el que sume de mas
				xdias<-subcadena(turnos[i],1,1)
				xhoras<-subcadena(turnos[i],2,2)
				Mostrar dias[xdias]," ",horas[xhoras]
			Fin Para		
		FinSi		
		//mantener catalogo
		Si menuPrincipal=2 Entonces
			cantidadProductos <- 1
			
			Repetir
				Mostrar "Cantidad paletas: "
				Leer productos[cantidadProductos]
				
				cantidadProductos <- cantidadProductos + 1
		
			Hasta que opcionMenu = 0
			Si opcionMenu=0
				escribir "Upss, algo salio mal, vamos de nuevo"
			FinSi
		FinSi
		Si menuPrincipal=4
			escribir "MUCHAS GRACIAS POR USAR NUESTRA WEB!!!"
		FinSi
		
			Hasta Que menuPrincipal=4
	
	
FinAlgoritmo