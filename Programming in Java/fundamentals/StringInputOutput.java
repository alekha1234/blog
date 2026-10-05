package fundamentals;  /* importing main folder */
import java.util.*; /* Importing input, output, scanner from java utils */


// take string inputs from user and display it in terminal
public class StringInputOutput {
    public static void main(String args[]){
        Scanner sc = new Scanner(System.in);             /* Start the scanner to take user inputs */
        System.out.print("Enter Your Name: ");
        String name = sc.nextLine();

        System.out.println("Welcome " + name + ", to the Java programming.");

        sc.close();  /* finally close the Scanner */
    }
}
