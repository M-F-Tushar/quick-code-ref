# File I/O & Input/Output in Java

[Back to Java Index](/Java/) | [Back to Main](/README.md)

---

## Console Input/Output

### Code Example
```java
import java.util.Scanner;

public class ConsoleIO {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("Enter your name: ");
        String name = scanner.nextLine();
        System.out.print("Enter your age: ");
        int age = scanner.nextInt();
        
        System.out.println("Hello, " + name + "! You are " + age + " years old.");
        scanner.close();
    }
}
```

## File Writing

### Code Example
```java
import java.io.FileWriter;
import java.io.IOException;

public class FileWriteExample {
    public static void main(String[] args) {
        try (FileWriter writer = new FileWriter("output.txt")) {
            writer.write("Hello, File!\n");
            writer.write("Writing to file in Java.\n");
            System.out.println("File written successfully.");
        } catch (IOException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
```

## File Reading

### Code Example
```java
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class FileReadExample {
    public static void main(String[] args) {
        try (BufferedReader reader = new BufferedReader(new FileReader("output.txt"))) {
            String line;
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
            }
        } catch (IOException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}
```

### Common Pitfall ⚠️
Always use try-with-resources to ensure files are closed automatically.

### Quick Tip ✨
Use BufferedReader/BufferedWriter for efficient file I/O.

### Language-Specific Notes
Java has extensive I/O classes in java.io and java.nio packages.

---

[Back to Top](#file-io--inputoutput-in-java) | [Back to Java Index](/Java/) | [Back to Main](/README.md)
