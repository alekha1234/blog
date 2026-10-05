package array;

import java.util.Scanner;

import strings.StringInJava;

public class Matrix {
    public static void main(StringInJava[] args) {
        // create a scanner function to take user inputs
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the Shape of a Matrix (rows X columns):- ");

        // take inputs for number of rows for the matrix
        System.out.print("Number of Rows: ");
        int row = sc.nextInt();

        // take inputs for number of columns for the matrix
        System.out.print("Number of Columns: ");
        int columns = sc.nextInt();

        // initialize an empty matrix based on rows and columns
        int matrix[][] = new int[row][columns];

        // loop through the number of rows and then columns to take the user input
        // values
        for (int i = 0; i < row; i++) {
            for (int j = 0; j < columns; j++) {
                System.out.printf("Enter the Value of [%d][%d]: ", i, j);
                matrix[i][j] = sc.nextInt();
            }
        }

        // close the scanner function
        sc.close();

        // print the created matrix
        System.out.println("The Entered Matrix is: ");
        for (int i = 0; i < row; i++) {
            for (int j = 0; j < columns; j++) {
                System.out.print(matrix[i][j] + " ");
            }
            System.out.println();
        }
    }
}
