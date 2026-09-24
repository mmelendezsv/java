Algoritmo sin_titulo
	Dimension circuito[10,10]
	Definir fila Como Entero
	Definir columna Como Entero
	Definir filaAleatoria Como Entero
	Definir columnaAleatoria Como Entero
	
	Para contFilas<-1 hasta 10 Hacer
		Para contColumnas<-1 hasta 10 Hacer
			circuito[contFilas,contColumnas]="L"
		FinPara
	FinPara
	
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		filaAleatoria = Azar(10) + 1;
		columnaAleatoria = Azar(10) + 1;
		Mientras circuito[filaAleatoria,columnaAleatoria]="C" Hacer
			filaAleatoria = Azar(10) + 1;
			columnaAleatoria = Azar(10) + 1;
		Fin Mientras
		circuito[filaAleatoria,columnaAleatoria]="C"
	Fin Para
	
	Para contFilas<-1 hasta 10 Hacer
		Para contColumnas<-1 hasta 10 Hacer
			Escribir Sin Saltar circuito[contFilas,contColumnas]=" "
		FinPara
		Escribir" "
	FinPara
	
	Escribir "Dame el valor de una fila"
	Leer fila
	Escribir "Dame el valor de una columna"
	Leer columna
	Si fila<1 o columna<1 Entonces
		Escribir" Hay un valor que no está dentro de la matriz"
	SiNo
		Si circuito[fila,columna]="C" Entonces
			Escribir" En esta posición hay un coche"
		SiNo
			Escribir"Esta posición está libre"
		Fin Si
	FinSi
	
FinAlgoritmo
