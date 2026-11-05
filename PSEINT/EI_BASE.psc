Algoritmo EI

	// ==========================================
	// DATOS DEL ALUMNO
	// ==========================================

	// Nombre y apellidos: Marco Meléndez del Pico
	// Grupo: 1ºA


	// ==========================================
	// PREPARACIÓN DE LA LISTA Y LA MATRIZ
	// NO MODIFICAR ESTE APARTADO
	// ==========================================

	// Una dimensión: lista de 10 posiciones
	Dimension lista[10]

	// Dos dimensiones: 10 filas y 10 columnas
	Dimension matriz[10,10]

	Definir fila Como Entero
	Definir columna Como Entero

	// Rellenar la lista con valores aleatorios
	// comprendidos entre 10 y 30

	Para fila <- 1 Hasta 10 Con Paso 1 Hacer
		lista[fila] <- Aleatorio(10,30)
	FinPara

	// Rellenar la matriz con valores aleatorios
	// comprendidos entre 10 y 30

	Para fila <- 1 Hasta 10 Con Paso 1 Hacer
		Para columna <- 1 Hasta 10 Con Paso 1 Hacer
			matriz[fila,columna] <- Aleatorio(10,30)
		FinPara
	FinPara


	// ==========================================
	// EJERCICIO 1
	// VARIABLES, ENTRADA Y SALIDA
	// ==========================================

	// Escribe aquí tu solución

	Definir edad como Entero;
	Definir nombre como Caracter;
	Definir hsemanales como Entero;
	
	Escribir "Introduce tu nombre";
	Leer nombre;
	Escribir "Introduce tu edad";
	Leer edad;
	Escribir "Introduce el número de horas semanales que dedicas a estudiar";
	Leer hsemanales;
	Escribir nombre," tiene ",edad," años";
	Escribir "Dentro de 5 años tendrá ",edad+5," años";
	Escribir "Estudia ",hsemanales," horas a la semana";
	


	// ==========================================
	// EJERCICIO 2
	// CONDICIONALES
	// ==========================================

	// Escribe aquí tu solución

	Definir nota1 como Real;
	Definir nota2 como Real;
	Definir nota3 como Real;
	Definir notam como Real;
	
	Escribir"voy a hacer la media con las 3 notas que hayas sacado, dame la primera";
	leer nota1;
	Si nota1<0 o nota1>10 Entonces
		Escribir "error"
	FinSi
	
	Escribir"dame la segunda";
	leer nota2;
	Si nota2<0 o nota2>10 Entonces
		Escribir "error"
	FinSi
	
	Escribir"dame la última";
	leer nota3
	Si nota3<0 o nota3>10 Entonces
		Escribir "error"
	FinSi
	
	notam <- (nota1+nota2+nota3)/3;
	Escribir"tu nota media es un ",notam;
	
	Si notam<5 Entonces
		Escribir "Suspenso";
	FinSi
	
	Si notam>=5 y notam<=6.99 Entonces
		Escribir"aprobado";
	FinSi
	
	Si notam>=7 y notam<=8.99 Entonces
		Escribir "notable";
	FinSi
	
	Si notam>=9 y notam<=10 Entonces
		Escribir"sobresaliente";
	FinSi
	// ==========================================
	// EJERCICIO 3
	// BUCLES
	// ==========================================

	// Escribe aquí tu solución
	
	Definir n como Entero;
	Definir n1 Como Entero;
	
	Escribir"introduce un valor y escribo su tabla de multiplicar del 1 al 10";
	leer n;
	n1<-n;
	
	Para i<-1 hasta 10 hacer;
		Escribir n*i;
	FinPara
	
	Escribir "La suma de todos los números desde 1 hasta el número introducido es:"
	Para i<-1 hasta n-1 hacer;
		n<-n+i
	FinPara
	Escribir n;
	
	Escribir "Ahora te voy a indicar los números pares que existen desde el 1 hasta el número introducido:"
	Para i<-1 hasta n1 Hacer;
		si n1 MOD 2==0 Entonces
			Escribir n1," es par";
			n2<-n2+1;
		SiNo
			Escribir n1," no es par";
		FinSi
		n1<-n1-1;
	FinPara
	Escribir "hay ",n2," números pares"
	

	// ==========================================
	// EJERCICIO 4
	// ARRAY UNIDIMENSIONAL
	// ==========================================

	// Escribe aquí tu solución
	Definir s como Real;
	Definir s1 como Real;
	Definir lista como Real;
	
	Para i<-1 hasta 10 hacer
		leer lista[i];
		s<-i;
		s1<-s+i;
	FinPara
	Escribir "la suma de todos los valores es ",s1

	// ==========================================
	// EJERCICIO 5
	// MATRIZ BIDIMENSIONAL
	// ==========================================

	// Escribe aquí tu solución




FinAlgoritmo
