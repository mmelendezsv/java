Algoritmo campo_de_minas
		dimension cuadricula[10,10] 
		Definir filaAleatoria Como Entero
		Definir columnaAleatoria Como Entero
		
		Para contFilas=1 Hasta 10 Con Paso 1 Hacer
			Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
				cuadricula[contFilas,contColumnas]='.'
			Fin Para
		Fin Para
		//REPETIR EL PROCESO HASTA HACER 10 MINAS EN LA CUADRICULA
		Para i<-1 Hasta 10 Con Paso 1 Hacer
			//SE GENERA UNA POSICIÓN ALEATORIA
			filaAleatoria = Azar(10) + 1;
			columnaAleatoria = Azar(10) + 1;
			//SI EN LA CUADRICULA HAY UNA M, SE GENERA OTRA POSICIÓN ALEATORIA
			Mientras cuadricula[filaAleatoria,columnaAleatoria]="M" Hacer
				filaAleatoria = Azar(10) + 1;
				columnaAleatoria = Azar(10) + 1;
				//SINO, SE GENERA LA MINA
			Fin Mientras
			cuadricula[filaAleatoria,columnaAleatoria]="M"
		Fin Para
		
		Para contFilas=1 Hasta 10 Con Paso 1 Hacer
			Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
				Escribir cuadricula[contFilas,contColumnas] Sin Saltar, "  "
			Fin Para
			Escribir " "
		Fin Para
		
FinAlgoritmo
