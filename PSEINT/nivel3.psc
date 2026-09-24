Algoritmo invasión_alienígena
		dimension cuadricula[10,10] 
		Definir filaAleatoria Como Entero
		Definir columnaAleatoria Como Entero
		
		Para contFilas=1 Hasta 10 Con Paso 1 Hacer
			Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
				cuadricula[contFilas,contColumnas]='.'
			Fin Para
		Fin Para
		//REPETIR EL PROCESO HASTA HACER 10 A EN LA CUADRICULA
		Para i<-1 Hasta 8 Con Paso 1 Hacer
			//SE GENERA UNA POSICIÓN ALEATORIA
			filaAleatoria = Azar(10) + 1;
			columnaAleatoria = Azar(10) + 1;
			//SI EN LA CUADRICULA HAY UNA A, SE GENERA OTRA POSICIÓN ALEATORIA
			Mientras cuadricula[filaAleatoria,columnaAleatoria]="A" Hacer
				filaAleatoria = Azar(10) + 1;
				columnaAleatoria = Azar(10) + 1;
				//SINO, SE GENERA LA A
			Fin Mientras
			cuadricula[filaAleatoria,columnaAleatoria]="A"
		Fin Para
		
		Para i<-1 Hasta 5 Con Paso 1 Hacer
			//SE GENERA UNA POSICIÓN ALEATORIA
			filaAleatoria = Azar(10) + 1;
			columnaAleatoria = Azar(10) + 1;
			//SI EN LA CUADRICULA HAY UNA N O UNA A, SE GENERA OTRA POSICIÓN ALEATORIA
			Mientras cuadricula[filaAleatoria,columnaAleatoria]="N" o cuadricula[filaAleatoria,columnaAleatoria]="A"  Hacer
				filaAleatoria = Azar(10) + 1;
				columnaAleatoria = Azar(10) + 1;
				//SINO, SE GENERA LA N
			Fin Mientras
			cuadricula[filaAleatoria,columnaAleatoria]="N"
		Fin Para
		
		Para contFilas=1 Hasta 10 Con Paso 1 Hacer
			Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
				Escribir cuadricula[contFilas,contColumnas] Sin Saltar, "  "
			Fin Para
			Escribir " "
		Fin Para
		
FinAlgoritmo
