//jeff davidson
//sept 11, 2018
//Employee and Salesperson data stuff and calculates their pay based on their hours
package jeffdavidsonhw1;
import java.util.Arrays;

public class JeffDavidsonHW1 {

    public static void main(String[] args) {
        //arrays to store employees and salespersons hours
        double[] a = {10,8,9,9,8,7,8};
        double[] b = {8,7,8,9,9,10,10};
        
        //sets employee and salespersons personal info
        Employee E1 = new Employee("Gary", 789789, 10.25,"Gary@email.com",a);
        Salesperson S1 = new Salesperson("Old Gary", 987987, 25.10, "oldGary@email.com",b,.10, 500);
        
        //array for weekday header
        String Weekdayarray[] = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday","Sunday"};
        
        //prints each object shows all their personal info
        System.out.println(E1);
        System.out.println(S1);
        System.out.println("");
        
        //prints weekday header
        System.out.println("Employee hours");
        System.out.println(Arrays.toString(Weekdayarray));
        
        //prints employee and salespersons hours worked
        System.out.println(Arrays.toString(E1.getHours()));
        System.out.println("");
        System.out.println("Salesperson hours");
        System.out.println(Arrays.toString(S1.getHours()));
        
        //changes salespersones email
        System.out.println("");
        S1.setEmail("OldGarysucks@email.com");
        System.out.println("");
        
        //prints the salespersons name and changed email
        System.out.println("Salesperson's name: "+S1.getName()+" Salesperson's Email: "+S1.getEmail());
        System.out.println("");
        
        //changes the commissionrate for the salesperson
        S1.setcommissionRate(.15);
        
        //prints the salesperson data to show change in commissionrate
        System.out.println(S1);
        System.out.println("");
    
        //prints employees and salespersons paycheck
        System.out.println("Employee pay: "+E1.getsumA());
        System.out.println("SalesPerson pay: "+S1.getsumB());

    } 
}
