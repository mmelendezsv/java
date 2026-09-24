Algoritmo aparcamiento
	
	dimension cuadricula[5,8] 
	Definir filaAleatoria Como Entero
	Definir columnaAleatoria Como Entero
	Definir pocupada como Entero
	Definir plibre como Entero
	
	Para contFilas=1 Hasta 5 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 8 Con Paso 1 Hacer
			cuadricula[contFilas,contColumnas]='L'
			plibre<-plibre+1
		Fin Para
	Fin Para
	Para i<-1 Hasta 15 Con Paso 1 Hacer
		filaAleatoria = Azar(5) + 1;
		columnaAleatoria = Azar(8) + 1;
		Mientras cuadricula[filaAleatoria,columnaAleatoria]="O" Hacer
			filaAleatoria = Azar(5) + 1;
			columnaAleatoria = Azar(8) + 1;
		Fin Mientras
		cuadricula[filaAleatoria,columnaAleatoria]="O"
		pocupada<-pocupada+1
		plibre<-plibre-1
	Fin Para
	
	Para contFilas=1 Hasta 5 Con Paso 1 Hacer
		Para contColumnas=1 Hasta 8 Con Paso 1 Hacer
			Escribir cuadricula[contFilas,contColumnas] Sin Saltar, "  "
		Fin Para
		Escribir " "
	Fin Para
	
	Escribir "Hay ",plibre," plazas libres y ",pocupada," plazas ocupadas"
FinAlgoritmo