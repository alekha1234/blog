// check a number is even or odd

package conditionalStatements;

import java.util.Scanner;

public class IfStatements {
    public static void main() {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enetr a number: ");

        int num = sc.nextInt();
        if (num % 2 == 0) {
            System.out.println(num + " is an even Number.");
        } else {
            System.out.println(num + " is a odd Number.");
        }

        sc.close();
    }
}
