import java.util.Random;
import java.util.Scanner;
public class Main {
    public static void main(String[] args) {

        Random aleatorio = new Random();
        char [][] matriz = new char[10][10];

        int vidas=10;

        for (int f=0; f<10;f++){
            for (int c=0; c<10; c++){
                matriz[f][c]='*';
            }
        }

        char ROBOT='R';
        char META='F';
        matriz[0][0]=ROBOT;
        matriz[9][9]= META;

        int filAleatoria = aleatorio.nextInt(10);
        int columnAleatoria= aleatorio.nextInt(10);
        matriz[filAleatoria][columnAleatoria]='B';

        int cont=1;
        while (cont<=5) {
            int filAleatoria2;
            int columnAleatoria2;
            do {
                filAleatoria2 = aleatorio.nextInt(10);
                columnAleatoria2 = aleatorio.nextInt(10);
            } while (matriz[filAleatoria2][columnAleatoria2] !='*');
            matriz[filAleatoria2][columnAleatoria2] = 'X';
            cont++;
        }


        for (int f=0; f<10;f++){
            for (int c=0; c<10; c++){
                System.out.print(matriz[f][c]+" ");
            }
            System.out.println();
        }

        System.out.println("Tu jugador se encuentra en la casilla 0,0");
        System.out.println(" y te puedes desplazar con WASD");

        Scanner sc = new Scanner(System.in);

        int filaRobot = 0;
        int columnaRobot= 0;

        do {
            System.out.println("Dime una letra: ");
            char desplazamiento = sc.next().charAt(0);

            System.out.println("La letra elegida es " + desplazamiento);

            if (desplazamiento == 'D') {
                if (columnaRobot <9) {
                    matriz[filaRobot][columnaRobot] = '*';
                    columnaRobot++;
                    if (matriz[filaRobot][columnaRobot] == 'X'){
                        vidas++;
                        System.out.println("Has pisado una X, movimiento bloqueado");
                        columnaRobot--;
                    }
                    if (matriz[filaRobot][columnaRobot] == 'B'){
                        vidas=vidas +2;
                        System.out.println("Has pisado una B que te suma dos vidas, por lo que ahora tienes " +vidas+" vidas");
                    }
                    if (matriz[filaRobot][columnaRobot] == 'F'){
                        System.out.println("Rescate completado");
                        break;
                    }
                    matriz[filaRobot][columnaRobot] = ROBOT;
                } else {
                    System.out.println("No puedes salir del limite de la matriz");
                }
            }

            if (desplazamiento == 'S') {
                if (filaRobot <9) {
                    matriz[filaRobot][columnaRobot] = '*';
                    filaRobot++;
                    if (matriz[filaRobot][columnaRobot] == 'X') {
                        vidas++;
                        System.out.println("Has pisado una X, movimiento bloqueado");
                        filaRobot--;
                    }
                    if (matriz[filaRobot][columnaRobot] == 'B'){
                        vidas=vidas +2;
                        System.out.println("Has pisado una B que te suma dos vidas, por lo que ahora tienes " +vidas+" vidas");
                    }
                    if (matriz[filaRobot][columnaRobot] == 'F'){
                        System.out.println("Rescate completado");
                        break;
                    }
                    matriz[filaRobot][columnaRobot] = ROBOT;
                } else {
                    System.out.println("No puedes salir del limite de la matriz");
                }
            }

            if (desplazamiento == 'W') {
                if (filaRobot>0) {
                    matriz[filaRobot][columnaRobot] = '*';
                    filaRobot = filaRobot - 1;
                    if (matriz[filaRobot][columnaRobot] == 'X'){
                        vidas++;
                        System.out.println("Has pisado una X, movimiento bloqueado");
                        filaRobot++;
                    }
                    if (matriz[filaRobot][columnaRobot] == 'B'){
                        vidas=vidas +2;
                        System.out.println("Has pisado una B que te suma dos vidas, por lo que ahora tienes " +vidas+" vidas");
                    }
                    if (matriz[filaRobot][columnaRobot] == 'F'){
                        System.out.println("Rescate completado");
                        break;
                    }
                    matriz[filaRobot][columnaRobot] = ROBOT;
                }else {
                    System.out.println("No puedes salir del limite de la matriz");
                }
            }

            if (desplazamiento == 'A') {
                if (columnaRobot>0) {
                    matriz[filaRobot][columnaRobot] = '*';
                    columnaRobot = columnaRobot - 1;
                    if (matriz[filaRobot][columnaRobot] == 'X') {
                        vidas++;
                        System.out.println("Has pisado una X, movimiento bloqueado");
                        columnaRobot++;
                    }
                    if (matriz[filaRobot][columnaRobot] == 'B'){
                        vidas=vidas +2;
                        System.out.println("Has pisado una B que te suma dos vidas, por lo que ahora tienes " +vidas+" vidas");
                    }
                    if (matriz[filaRobot][columnaRobot] == 'F'){
                        System.out.println("Rescate completado");
                        break;
                    }
                    matriz[filaRobot][columnaRobot] = ROBOT;
                }else {
                    System.out.println("No puedes salir del limite de la matriz");
                }
            }

            for (int f = 0; f < 10; f++) {
                for (int c = 0; c < 10; c++) {
                    System.out.print(matriz[f][c] + " ");
                }
                System.out.println();
            }
            System.out.println();

            System.out.println("Tienes "+vidas+" vidas");
            vidas--;
        }while(vidas>=0);
    }
}
