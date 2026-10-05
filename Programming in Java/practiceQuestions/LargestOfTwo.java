//  find the largest number 

package practiceQuestions;
import java.util.Scanner;

public class LargestOfTwo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter a number num1:");
        int num1 = sc.nextInt();

        System.out.println("Enter a number num2: ");
        int num2 = sc.nextInt();

        if (num1 > num2){
            System.out.println(num1 + " is the Largest number than " + num2);
        }   else{
            System.out.printf("%d is Largest number than %d", num2, num1);
        }

        sc.close();
    }
}
