# Control Flow (If/Else) in Java

[Back to Java Index](/Java/) | [Back to Main](/README.md)

---

## Basic If Statement

### Syntax
```java
if (condition) {
    // code to execute if condition is true
}
```

### Explanation
The if statement executes a block of code only when the specified condition evaluates to true.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        int score = 85;
        if (score >= 80) {              // Check if score is 80 or above
            System.out.println("Great job!");
        }
    }
}
// Expected Output:
// Great job!
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Using assignment (=) instead of comparison (==) in conditions causes compilation errors in Java, unlike C/C++.

### Quick Tip ✨
Java's strict boolean type prevents accidental assignments in conditions - a compile-time safety feature.

### Language-Specific Notes
Java requires boolean conditions. You cannot use integers (0/1) as conditions like in C/C++.

---

## If-Else Statement

### Syntax
```java
if (condition) {
    // code if true
} else {
    // code if false
}
```

### Explanation
The if-else statement provides an alternative execution path when the condition is false.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        int score = 85;
        if (score >= 90) {              // Check for excellent score
            System.out.println("Grade: A");
        } else {
            System.out.println("Grade: B or below");
        }
    }
}
// Expected Output:
// Grade: B or below
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Forgetting braces for multi-line blocks can lead to logic errors, especially when adding code later.

### Quick Tip ✨
Always use braces {} even for single-line blocks to prevent future bugs - it's a Java best practice.

### Language-Specific Notes
Java style guidelines strongly recommend always using braces for all control flow statements.

---

## If-Else-If Chain

### Syntax
```java
if (condition1) {
    // code for condition1
} else if (condition2) {
    // code for condition2
} else {
    // code if all conditions false
}
```

### Explanation
Multiple conditions can be checked in sequence. The first true condition executes its block, then the chain exits.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        int score = 85;                 // Test with 85
        if (score >= 90) {              // Check for A grade
            System.out.println("Grade: A");
        } else if (score >= 80) {       // Check for B grade
            System.out.println("Grade: B");
        } else if (score >= 70) {       // Check for C grade
            System.out.println("Grade: C");
        } else {
            System.out.println("Grade: F");
        }
    }
}
// Expected Output:
// Grade: B
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Order matters! Place more specific conditions before general ones to avoid unreachable code.

### Quick Tip ✨
For multiple equality checks, consider using a switch statement for better readability and performance.

### Language-Specific Notes
Java's switch expressions (Java 14+) provide a more modern alternative to long if-else-if chains.

---

## Nested If Statements

### Syntax
```java
if (condition1) {
    if (condition2) {
        // code when both true
    }
}
```

### Explanation
If statements can be nested inside other if statements to check multiple related conditions.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        int score = 85;
        int attendance = 95;
        if (score >= 80) {              // First check score
            if (attendance >= 90) {      // Then check attendance
                System.out.println("Excellent performance!");
            }
        }
    }
}
// Expected Output:
// Excellent performance!
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Deep nesting reduces readability. Consider using logical operators (&&, ||) or extracting methods instead.

### Quick Tip ✨
Refactor nested conditions into separate methods with descriptive names for better code organization.

### Language-Specific Notes
Java encourages extracting complex conditions into well-named methods following the Single Responsibility Principle.

---

## Ternary Operator

### Syntax
```java
result = (condition) ? value_if_true : value_if_false;
```

### Explanation
The ternary operator provides a concise way to assign values based on a condition in a single expression.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        int score = 85;
        String result = (score >= 80) ? "Pass" : "Fail";  // Compact if-else
        System.out.println("Result: " + result);
    }
}
// Expected Output:
// Result: Pass
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Nesting ternary operators creates unreadable code. Use regular if-else for complex conditions.

### Quick Tip ✨
Use ternary operators only for simple value assignments. They work well with final variable initialization.

### Language-Specific Notes
Both branches of a ternary operator must return compatible types. Java performs type inference for the result.

---

[Back to Top](#control-flow-ifelse-in-java) | [Back to Java Index](/Java/) | [Back to Main](/README.md)
