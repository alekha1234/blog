/*
 * The package declaration should match the folder structure.
 * Since your file is in dataStructure/array, use:
 */
package array;

import strings.StringInJava;

public class Array {
    public static void main(StringInJava[] args) {
        int[] marks = new int[5];

        marks[0] = 88; // physics
        marks[1] = 90; // chemistry
        marks[2] = 85; // math
        marks[3] = 95; // english
        marks[4] = 98; // IT

        // print the output on console
        // System.out.println("Marks of Physics: " + marks[0]);

        for (int i = 1; i < 5; i++) {
            System.out.println(marks[i]);
        }
    }
}
