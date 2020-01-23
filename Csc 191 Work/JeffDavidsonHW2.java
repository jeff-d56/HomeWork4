
package jeffdavidsonhw2;

import java.util.Scanner;
import java.util.Random;

public class JeffDavidsonHW2 {

    public static void main(String[] args) {
        //Arrays
        String secretCode []= new String[4];
        //did two Arrays so that it could change one and keep the original
        //array changed and then compared to code array
        String inputCode [][]= new String[10][8];
        //main display array
        String inputBackup [][]= new String[10][8];
        int d = 0;
        Scanner input = new Scanner(System.in);
        String choice = "";
        
        //do while for asking to play agian
        do{
            //generates secret code in method below
            generateSecret(secretCode);
            
            //fills the main board with o and |
            fillA(inputBackup);
            
            //for loop for 10 guesses then ask if want to playt again
            for (int r = 0; r< 10; r++) {
            
            System.out.println("Guess the Code: ");
            
            //for loop to fill the array with user input this is their guess at the code
            for (int c = 0; c < 4; c++) {
                
                System.out.print("Enter a color: ");
                String color = input.nextLine().toUpperCase();
                
                //input valadation
                while(!"B".equals(color) && !"R".equals(color) && !"G".equals(color) && !"Y".equals(color) && !"P".equals(color) && !"O".equals(color)){
                    System.out.println("Enter a leter B, R, G, Y, P, O. You can alternativly use their lowercase.");
                    color =input.nextLine().toUpperCase();
                    
                }
                
                inputCode[r][c]=color;
                inputBackup[r][c]=color;
                
            }
            
            //puts spaces in the array where the pegs would be
            for (int j = 4; j < 8; j++) {
                inputBackup[r][j]=" ";
            }
 
            
            //main calculation for if its a black peg or white peg or no peg
            for (int i = 0; i < 4; i++) {
                //black peg if changes another array to u so that if there is multiple of the same color it wont count it twice
                if(secretCode[i].equals(inputCode[r][i])){
                    inputBackup[r][7-i] = "B";
                    inputCode[r][i] = "U";
                //white peg if also changes another array to t so if there are multiple it wont count it twice
                }else{
                    for (int b = 0; b < 4; b++) {
                        if (secretCode[i].equals(inputCode[r][b])) {
                            inputBackup[r][7-i] = "W";
                            inputCode[r][b]="t";
                            break;
                        }
                    }
                }
            }
            
            //test to see if the users code matches the secret code by just adding d to itself if they match if it equals 4 they win
            for (int w = 0; w < 4; w++) {
                if (secretCode[w].equals(inputBackup[r][w])) {
                    d += 1;
                }
            }
            if(d==4){
                System.out.println("you win");
                break;
            }
            
            //prints the board
            printA(inputBackup);
            
            
        }//close main for
        //tells if you won or lost and what to print
        if (d!=4){
            System.out.print("Sorry! You lost! The secret code was: ");
            printB(secretCode);
        }    
        System.out.print("The secret code was: ");
        printB(secretCode);
        
        System.out.println("");
        
        //play again and input valadation
        System.out.println("Would you like to Play Agin?");
        choice = input.nextLine().toUpperCase();
        while(!"Y".equals(choice) && !"N".equals(choice)){
            System.out.println("Enter Y or N");
            choice = input.nextLine().toUpperCase();
        }
        }while(choice.charAt(0)!='N');
        
    }//close main
    
    //fills array with O and |
    static void fillA(String[][] a){
        for (int r = 0; r < 10; r++) {
            for (int c = 0; c < 4; c++) {
                a[r][c] = "O";
            }
            for (int c = 4;c<8;c++){
                a[r][c] = " ";
            }
        }
    }
    
    //prints the Board
    static void printA(String[][] a){
        for (int r = 0; r < 10; r++) {
            for (int c = 0; c < 4; c++) {
                System.out.print(a[r][c]);
                System.out.print(" ");
            }
            System.out.print("|");
            for (int c = 4; c < 8; c++) {
                System.out.print(a[r][c]);
                System.out.print(" ");
            }
            System.out.println();
        }
    }
    
    //prints the secret code
    static void printB (String[] a){
        for (int i = 0; i < 4; i++) {
            System.out.print(a[i]);
            System.out.print(" ");
        }
        System.out.print("");
    }
    
    
    //generates the secret code
    static void generateSecret(String[] a){
        for (int i = 0; i < 4; i++) {
            Random num = new Random();
            int n = num.nextInt(6)+1;
            switch(n){
                case 1: a[i]="B";
                        break;
                case 2: a[i]="R";
                        break;
                case 3: a[i]="G";
                        break;
                case 4: a[i]="Y";
                        break;
                case 5: a[i]="P";
                        break;
                case 6: a[i]="O";
                        break;
                default:
            }
        }
    }
    
    
    
}//close class
