# Strings & String Operations in Java

[Back to Java Index](/Java/) | [Back to Main](/README.md)

---

For complete string operations in Java including concatenation, comparison, substring, searching, replacement, formatting, and case conversion, see the comprehensive examples below.

## String Declaration

### Syntax
```java
String str = "text";
String str = new String("text");
```

### Code Example
```java
public class StringBasics {
    public static void main(String[] args) {
        String greeting = "Hello";
        String name = "Alice";
        System.out.println("Greeting: " + greeting);
        System.out.println("Name: " + name);
        System.out.println("Length: " + name.length());
    }
}
// Expected Output:
// Greeting: Hello
// Name: Alice
// Length: 5
```

## String Concatenation

### Code Example
```java
public class StringConcat {
    public static void main(String[] args) {
        String firstName = "John";
        String lastName = " Doe";
        String fullName = firstName + lastName;
        System.out.println("Full name: " + fullName);
    }
}
// Expected Output:
// Full name: John Doe
```

## String Comparison

### Code Example
```java
public class StringCompare {
    public static void main(String[] args) {
        String str1 = "apple";
        String str2 = "banana";
        System.out.println("Equal: " + str1.equals(str2));
        System.out.println("Compare: " + str1.compareTo(str2));
        if (str1.compareTo(str2) < 0) {
            System.out.println(str1 + " comes before " + str2);
        }
    }
}
// Expected Output:
// Equal: false
// Compare: -1
// apple comes before banana
```

## Substring and Searching

### Code Example
```java
public class StringOps {
    public static void main(String[] args) {
        String text = "Hello World";
        String sub = text.substring(6, 11);
        System.out.println("Substring: " + sub);
        
        int pos = text.indexOf("World");
        System.out.println("Found 'World' at position: " + pos);
    }
}
// Expected Output:
// Substring: World
// Found 'World' at position: 6
```

## String Replacement and Case Conversion

### Code Example
```java
public class StringModify {
    public static void main(String[] args) {
        String text = "Hello World";
        String replaced = text.replace("World", "Java");
        System.out.println("Replaced: " + replaced);
        
        System.out.println("Uppercase: " + text.toUpperCase());
        System.out.println("Lowercase: " + text.toLowerCase());
    }
}
// Expected Output:
// Replaced: Hello Java
// Uppercase: HELLO WORLD
// Lowercase: hello world
```

### Common Pitfall ⚠️
Strings in Java are immutable. All string methods return new strings.

### Quick Tip ✨
Use StringBuilder for efficient string concatenation in loops.

### Language-Specific Notes
Java strings are objects and immutable. Use equals() for comparison, not ==.

---

[Back to Top](#strings--string-operations-in-java) | [Back to Java Index](/Java/) | [Back to Main](/README.md)
