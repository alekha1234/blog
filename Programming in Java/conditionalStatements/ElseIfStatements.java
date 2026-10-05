// Check a number is +ve, -Ve or Zero

package conditionalStatements;

import java.util.Scanner;

public class ElseIfStatements {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int n = sc.nextInt();

        if (n > 0) {
            System.out.println(n + " is a Positive Number");
        } else if (n < 0) {
            System.out.println(n + " is a Negative Number.");
        } else {
            System.out.println(n + " is Zero.");
        }

        sc.close();
    }
}
