Algoritmo Hackathon_Clase_18_09_2026
	//Asigno una matriz 15x15 y a cada posición le asigno el valor *
	//Ejercicio sin acabar
	Dimensionar sopaDeLetras[10,10]
	Para contFilas=1 Hasta 10 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
			sopaDeLetras[contFilas,contColumnas]='*'
		Fin Para
	Fin Para
	
	
	Definir filaAleatoria Como Entero
	Definir columnaAleatoria Como Entero
	
	
	
	Para n<-1 Hasta 10 Con Paso 1 Hacer
		filaAleatoria = Azar(10) + 1;
		columnaAleatoria = Azar(10) + 1;
		Si (sopaDeletras[filaAleatoria,columnaAleatoria]=="*") Entonces
			sopaDeLetras[filaAleatoria,columnaAleatoria]="H";
		SiNo
			//No pongo la H(PSeint no deja hacerlo)
		FinSi
	Fin Para
	
	Si sopaDeLetras[filaAleatoria,columnaAleatoria]="H" Entonces
		sopaDeLetras[filaAleatoria,columnaAleatoria]="H";
	SiNo
		sopaDeLetras[filaAleatoria,columnaAleatoria]="B";
	Fin Si
	
	Para contFilas=1 Hasta 10 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 10 Con Paso 1 Hacer
			Escribir sopaDeLetras[contFilas,contColumnas] Sin Saltar, "  "
		Fin Para
		Escribir " "
	Fin Para
FinAlgoritmo