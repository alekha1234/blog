package strings;

public class StringInJava {
    public static void main(String[] args) {
        String firstName = "Gujuri";
        String lastname = "Alekha";

        // concatination using + operator
        String fullName = firstName + " " + lastname;
        System.out.println("Full Name is: " + fullName);

        // Uppar Case the full name
        System.out.println("Uppar Case: " + fullName.toUpperCase());

        // Lower Case the full name
        System.out.println("Lower Case: " + fullName.toLowerCase());

        // Length of the full Name
        System.out.println("Length is: " + fullName.length());

        // index of letter - "A"
        System.out.println("Index of 'A': " + fullName.indexOf('A'));
    }

}
