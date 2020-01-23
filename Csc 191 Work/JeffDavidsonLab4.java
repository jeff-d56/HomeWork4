//jeff davidson
//september 19
//lab 4
//allows people to manage the seats in a theater by how many there are to seat price to seat selection and seats sold
package jeffdavidsonlab4;

import java.util.Scanner;
public class JeffDavidsonLab4 {

    public static void main(String[] args) {
        //row and colunm size
        int nN;
        int nM;
        
        //name of theater
        String name;
        
        //input of name and theater size
        Scanner input = new Scanner(System.in);
        System.out.println("Enter the name of the theater: ");
        name = input.next();
        System.out.println("Enter the number of rows: ");
        nN = input.nextInt();
        System.out.println("Enter the number of columns: ");
        nM = input.nextInt();
        
        //creates a blank array so if someone trys to skip making theirs it wont crash
        double [][] BlankArray = new double [nN][nM];
        for (int r = 0; r < nN; r++) {
            for (int c = 0; c < nM; c++) {
                BlankArray[r][c]=0;
            }
        }
        
        Theater myA = new Theater(nN,nM,name);
        String choice;
        
        //menu loop everything is explained below in their methods
        do{
            System.out.println("menu:  (choose A at very beginning)");
            System.out.println("A. Set the price for each row of seats.");
            System.out.println("B. find a seat by number");
            System.out.println("C. find a seat by price");
            System.out.println("D. Mark a seat as sold");
            System.out.println("E. Print the seating chart");
            System.out.println("F. Exit");
            choice = input.next();
            switch(choice.charAt(0)){
                case 'a': case 'A':
                    System.out.println("");
                    myA.readA(nM, nM);
                    System.out.println("");
                    myA.printA(nM, nM);
                    System.out.println("");
                    break;
                case 'b': case 'B':
                    System.out.println("");
                    myA.findSeats(nN,nM);
                    System.out.println("");
                    break;
                case 'c': case 'C':
                    System.out.println("");
                    myA.findSeatsPrice(nM, nM);
                    System.out.println("");
                    break;
                case 'd': case 'D':
                    System.out.println("");
                    myA.markSold(nN,nM);
                    System.out.println("");
                    break;
                case 'e': case 'E':
                    System.out.println("");
                    System.out.println("  "+name);
                    myA.printB(nM, nM);
                    System.out.println("");
                    break;
                case 'f': case 'F':
                    System.out.println("");
                    System.out.println("Goodbye");
                    break;
                default:
                    System.out.println("");
                    System.out.println("you entered a wrong character try again");
                    System.out.println("");
                    break;
            }
            
        }while(choice.charAt(0)!='f' && choice.charAt(0) != 'F');
  
    } // end of main
    
}//end of class

//theater class
class Theater{
    double[][] seats;
    String eventName;

    public Theater(int n, int m, String e){
        seats = new double[n][m];
        eventName = e;
    }
    
    //called in menu A stores the values for the array entered by user
    public void readA(int n,int m){
        Scanner input = new Scanner(System.in);
        for (int r = 0; r < n; r++) {
            System.out.println("Enter a price for row "+(r+1));
            int row = input.nextInt();
            for (int c = 0; c < m; c++) {
                seats[r][c]=row;
                
            }
        }
    }
    
    //called in menu A to show the price of each row after they are entered so user can check it
    public void printA(int n, int m){
        for (int r = 0; r < n; r++) {
            for (int c = 0; c < m; c++) {
                System.out.print(seats[r][c]+" ");
            }
            System.out.println("");
        }
    }
    
    //called in menu B finds the seat in the array based on row and col and shows its price will also say if seat is sold
    public void findSeats(int n, int m){
        int row;
        int col;
        Scanner input = new Scanner(System.in);
        System.out.println("Enter row number: ");
        row = input.nextInt();
        //input validation for rows
        while (row>n){
            System.out.println("There are only "+n+" rows");
            System.out.println("");
            System.out.println("Enter row number");
            row = input.nextInt();
        }
        System.out.println("Emter Column number: ");
        col = input.nextInt();
        //input validation for colunms
        while (col>m){
            System.out.println("There are only "+m+" columns");
            System.out.println("");
            System.out.println("Enter Column number:");
            col = input.nextInt();
        }
        if(seats[row-1][col-1]>0){
            System.out.println("");
            System.out.println("Seat cost is $"+seats[row-1][col-1]+" and is available for purchase.");
        }else{
            System.out.println("");
            System.out.println("Seat is sold");
        }
    }
    
    //called in menu C finds the seat in the array by price and shows if it is avilable or not for that price
    public void findSeatsPrice(int n, int m){
        Scanner input = new Scanner(System.in);
        System.out.println("Enter a price for a seat: ");
        int price = input.nextInt();
        int yes =0;
        int no=0;
        int r;
        for (r = 0; r < n; r++) {
            if(seats[r][0]==price){
                yes +=1;
                break;  
            }    
        }
        if(yes > 0){
            System.out.println("");
            System.out.println("Price of $"+price+" is in row "+(r+1));
        }else{
            System.out.println("");
            System.out.println("There are no seats for $"+price);
        }
        
        
    }
    
    //called in menu D marks a seat as sold
    public void markSold(int n, int m){
        Scanner input = new Scanner(System.in);
        System.out.println("Enter a seat to mark sold: ");
        System.out.println("Enter row number: ");
        int row = input.nextInt();
        //input validation for rows
        while (row>n){
            System.out.println("There are only "+n+" rows");
            System.out.println("");
            System.out.println("Enter row number");
            row = input.nextInt();
        }
        System.out.println("Enter column number: ");
        int col = input.nextInt();
        //input validation for colunms
        while (col>m){
            System.out.println("There are only "+m+" columns");
            System.out.println("");
            System.out.println("Enter Column number:");
            col = input.nextInt();
        }
        while(seats[row-1][col-1]==0){
            System.out.println("Seat is already sold enter a new seat: ");
            System.out.println("Enter row number: ");
            row = input.nextInt();
            System.out.println("Enter column number: ");
            col = input.nextInt();
        }
        seats[row-1][col-1] = 0;
        System.out.println("");
        System.out.println("Seat marked as sold");
    }
    
    //called in menu E prints the seat chart as o for open and x for sold
    public void printB(int n, int m){
        String [][] seat= new String[n][m];
        for (int r = 0; r < n; r++) {
            for (int c = 0; c < n; c++) {
                if(seats[r][c]==0){
                    seat[r][c]="X";
                }else{
                    seat[r][c]="O";
                }
            }
        }
        for (int r = 0; r < n; r++) {
            for (int c = 0; c < m; c++) {
                System.out.print(seat[r][c]+" ");
                
            }
            System.out.println("");
        }
    }


}//end of theater class
 