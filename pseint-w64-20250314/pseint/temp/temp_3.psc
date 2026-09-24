Algoritmo La_cuadrícula_del_tesoro
	dimension cuadricula[8,8] 
	Definir filaAleatoria Como Entero
	Definir columnaAleatoria Como Entero
	
	Para contFilas=1 Hasta 8 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 8 Con Paso 1 Hacer
			cuadricula[contFilas,contColumnas]='.'
		Fin Para
	Fin Para

	filaAleatoria = Azar(8) + 1;
	columnaAleatoria = Azar(8) + 1;
	cuadricula[filaAleatoria,columnaAleatoria]="T"
	
	Para contFilas=1 Hasta 8 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 8 Con Paso 1 Hacer
			Escribir cuadricula[contFilas,contColumnas] Sin Saltar, "  "
		Fin Para
		Escribir " "
	Fin Para

FinAlgoritmo
