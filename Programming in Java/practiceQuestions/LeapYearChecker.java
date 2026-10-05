// check a year is leap year or not

package practiceQuestions;
import java.util.Scanner;

public class LeapYearChecker {
    public static void main(String[] args) {
        System.out.print("Enetr a Year: ");

        Scanner sc = new Scanner(System.in);

        int year = sc.nextInt();
        if ((year % 4 == 0 && year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)){
            System.out.printf("Year %d is a Leap Year", year);
        } else {
            System.out.printf("Year %d is not a Leap year.", year);
        }

        sc.close();
    }
}
