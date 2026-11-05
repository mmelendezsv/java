Algoritmo campo_de_minas
	dimension cuadricula[6,5]
	Definir n Como Entero
	Definir r Como Entero
	Definir filaAleatoria Como Entero
	Definir columnaAleatoria Como Entero
	r<-1
	
	Para contFilas=1 Hasta 6 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 5 Con Paso 1 Hacer
			cuadricula[contFilas,contColumnas]='.'
			Fin Para
	Fin Para
	
	Para i<-1 Hasta 12 Con Paso 1 Hacer
		filaAleatoria = Azar(6) + 1;
		columnaAleatoria = Azar(5) + 1;
		Mientras cuadricula[filaAleatoria,columnaAleatoria]="H" Hacer
			filaAleatoria = Azar(6) + 1;
			columnaAleatoria = Azar(5) + 1;
		Fin Mientras
		cuadricula[filaAleatoria,columnaAleatoria]="H"
	Fin Para
	//PRIMERO EN LA FILA 1 CUENTA LAS H QUE HAY SUMANDO DE 1 EN 1 A LA VARIABLE n, LUEGO MUESTRA EN PANTALLA CUANTAS H 
	//HAY EN ESA FILA,MARCADA CON LA VARIABLE r,Y POR ÚLTIMO SE REINICIAN LOS VALORES DE LA VARIABLE PARA SEGUIR CON LA
	//SIGUIENTE FILA
	Para contFilas=1 Hasta 6 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 5 Con Paso 1 Hacer
			Si cuadricula[contFilas,contColumnas]="H" Entonces
				n<-n+1
			FinSi
		FinPara
		Escribir "En la planta ",r," hay ",n," habitaciones"
		n<-0
		r<-r+1
	FinPara
	
	Para contFilas=1 Hasta 6 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 5 Con Paso 1 Hacer
			Escribir cuadricula[contFilas,contColumnas] Sin Saltar, "  "
			Fin Para
			Escribir " "
	Fin Para

FinAlgoritmo
