Algoritmo contar_objetos
	Definir n como Entero
	dimension cuadricula[10,10] 
	Definir filaAleatoria Como Entero
	Definir columnaAleatoria Como Entero
	
	Para contFilas=1 Hasta 10 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
			cuadricula[contFilas,contColumnas]='.'
		Fin Para
	Fin Para
	Para i<-1 Hasta 15 Con Paso 1 Hacer
		//SE GENERA UNA POSICIÓN ALEATORIA
		filaAleatoria = Azar(10) + 1;
		columnaAleatoria = Azar(10) + 1;
		Mientras cuadricula[filaAleatoria,columnaAleatoria]="A" Hacer
			filaAleatoria = Azar(10) + 1;
			columnaAleatoria = Azar(10) + 1;

		Fin Mientras
		cuadricula[filaAleatoria,columnaAleatoria]="A"
		n<- n + 1;
	Fin Para
	
	Para contFilas=1 Hasta 10 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
			Escribir cuadricula[contFilas,contColumnas] Sin Saltar, "  "
		Fin Para
		Escribir " "
	Fin Para
	
	Escribir "En la matriz hay ",n," A"
	
FinAlgoritmo
