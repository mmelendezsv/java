Algoritmo buscar_a_homer
	Definir n como Entero
	dimension cuadricula[10,10] 
	Definir filaAleatoria Como Entero
	Definir columnaAleatoria Como Entero
	n<-1
	
	Para contFilas=1 Hasta 10 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
			cuadricula[contFilas,contColumnas]='.'
		Fin Para
	Fin Para
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		filaAleatoria = Azar(10) + 1;
		columnaAleatoria = Azar(10) + 1;
		Mientras cuadricula[filaAleatoria,columnaAleatoria]="H" Hacer
			filaAleatoria = Azar(10) + 1;
			columnaAleatoria = Azar(10) + 1;
		Fin Mientras
		cuadricula[filaAleatoria,columnaAleatoria]="H"
		Escribir "El homer ",n," se encuentra en la fila ",filaAleatoria," y la columna ",columnaAleatoria
		n<-n+1
	Fin Para
	
	Para contFilas=1 Hasta 10 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
			Escribir cuadricula[contFilas,contColumnas] Sin Saltar, "  "
		Fin Para
		Escribir " "
	Fin Para
FinAlgoritmo
