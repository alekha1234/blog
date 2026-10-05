package fundamentals;
import java.util.Scanner;

public class IntegerInputOutput {
    public static void main(){
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter your name: ");

        String name = sc.nextLine();

        System.out.println("Welcome,  " + name + " to Java programming!");

        sc.close();
    }
}
