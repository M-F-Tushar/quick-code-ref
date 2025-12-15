# Variables & Data Types in Java

[Back to Java Index](/Java/) | [Back to Main](/README.md)

---

## Integer Declaration and Initialization

### Syntax
```java
int variableName;
int variableName = value;
```

### Explanation
Integers in Java store 32-bit whole numbers. Java requires explicit initialization before use within methods to prevent compilation errors.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        int userAge = 25;              // Initialize with value
        int maxScore = 100;            // Another integer
        System.out.println("Age: " + userAge);  // Print integer
        System.out.println("Max Score: " + maxScore);
    }
}
// Expected Output: 
// Age: 25
// Max Score: 100
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Local variables must be explicitly initialized before use, or the code won't compile.

### Quick Tip ✨
Use descriptive names like `userAge` instead of abbreviations for better code maintainability.

### Language-Specific Notes
Java int is always 32-bit regardless of platform, providing consistency across different systems.

---

## String Declaration and Initialization

### Syntax
```java
String variableName;
String variableName = "text";
```

### Explanation
Strings in Java are immutable objects. Once created, their content cannot be changed; operations create new String objects.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        String userName = "Alice";     // String object
        System.out.println("Name: " + userName); // Print string
        System.out.println("Length: " + userName.length()); // Get length
    }
}
// Expected Output:
// Name: Alice
// Length: 5
```

### Time/Space Complexity
O(1) time for declaration, O(n) time for string operations where n is string length

### Common Pitfall ⚠️
Using == to compare strings compares references, not content. Always use `.equals()` method.

### Quick Tip ✨
Use `.equals()` for content comparison and `==` only for reference comparison.

### Language-Specific Notes
String is a class (starts with capital S), not a primitive type. Strings are stored in the String pool for memory efficiency.

---

## Boolean Values

### Syntax
```java
boolean variableName = true/false;
```

### Explanation
Java has a primitive boolean type that can only hold true or false values, providing type safety.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        boolean isActive = true;          // Boolean variable
        boolean isComplete = false;       // Another boolean
        System.out.println("Active: " + isActive);     // Prints true
        System.out.println("Complete: " + isComplete); // Prints false
    }
}
// Expected Output:
// Active: true
// Complete: false
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Cannot convert between boolean and int in Java (unlike C). true/false cannot be used as 1/0.

### Quick Tip ✨
Java booleans are strict - only true or false values are allowed, no integer conversion.

### Language-Specific Notes
Java boolean is a true primitive type with strict type checking, unlike C where any non-zero is true.

---

## Type Conversion and Casting

### Syntax
```java
(targetType) expression              // Explicit casting
targetType variable = expression;    // Implicit conversion (widening)
```

### Explanation
Java supports automatic widening conversions (smaller to larger types) but requires explicit casting for narrowing conversions.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        int totalScore = 85;
        int maxScore = 100;
        double percentage = (double) totalScore / maxScore * 100; // Explicit cast
        System.out.println("Score: " + totalScore + "/" + maxScore);
        System.out.printf("Percentage: %.2f%%\n", percentage);
    }
}
// Expected Output:
// Score: 85/100
// Percentage: 85.00%
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Integer division truncates decimals. Cast to double before division to preserve decimal precision.

### Quick Tip ✨
Always cast at least one operand to double when performing division that needs decimal results.

### Language-Specific Notes
Java has strict type checking and won't allow narrowing conversions without explicit casting.

---

## Constants

### Syntax
```java
final type VARIABLE_NAME = value;
```

### Explanation
Constants in Java use the `final` keyword. By convention, constant names are written in UPPERCASE with underscores.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        final int MAX_ATTEMPTS = 3;     // Constant variable
        final double PI = 3.14159;      // Another constant
        final double GRAVITY = 9.81;    // Yet another constant
        System.out.println("Max Attempts: " + MAX_ATTEMPTS);
        System.out.printf("PI: %.5f\n", PI);
        System.out.printf("Gravity: %.2f m/s²\n", GRAVITY);
    }
}
// Expected Output:
// Max Attempts: 3
// PI: 3.14159
// Gravity: 9.81 m/s²
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Final variables must be initialized at declaration or in constructor. Attempting to reassign causes compilation error.

### Quick Tip ✨
Use `static final` for class-level constants: `public static final double PI = 3.14159;`

### Language-Specific Notes
Java doesn't have #define. Use `final` for instance constants and `static final` for class constants.

---

[Back to Top](#variables--data-types-in-java) | [Back to Java Index](/Java/) | [Back to Main](/README.md)
