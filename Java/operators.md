# Operators & Expressions in Java

[Back to Java Index](/Java/) | [Back to Main](/README.md)

---

## Arithmetic Operators

### Syntax
```java
result = operand1 + operand2;  // Addition
result = operand1 - operand2;  // Subtraction
result = operand1 * operand2;  // Multiplication
result = operand1 / operand2;  // Division
result = operand1 % operand2;  // Modulus (remainder)
```

### Explanation
Arithmetic operators perform mathematical calculations on numeric values. Division of integers truncates the decimal part.

### Code Example
```java
public class ArithmeticOperators {
    public static void main(String[] args) {
        int a = 15, b = 4;
        System.out.println("Addition: " + a + " + " + b + " = " + (a + b));
        System.out.println("Subtraction: " + a + " - " + b + " = " + (a - b));
        System.out.println("Multiplication: " + a + " * " + b + " = " + (a * b));
        System.out.println("Division: " + a + " / " + b + " = " + (a / b));
        System.out.println("Modulus: " + a + " % " + b + " = " + (a % b));
    }
}
// Expected Output:
// Addition: 15 + 4 = 19
// Subtraction: 15 - 4 = 11
// Multiplication: 15 * 4 = 60
// Division: 15 / 4 = 3
// Modulus: 15 % 4 = 3
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Integer division truncates the decimal part. Use floating-point types for precise division results.

### Quick Tip ✨
Cast at least one operand to double when you need decimal results: `(double)a / b`

### Language-Specific Notes
Java does not have a power operator. Use `Math.pow()` for exponentiation.

---

## Comparison Operators

### Syntax
```java
result = (a == b);  // Equal to
result = (a != b);  // Not equal to
result = (a < b);   // Less than
result = (a > b);   // Greater than
result = (a <= b);  // Less than or equal to
result = (a >= b);  // Greater than or equal to
```

### Explanation
Comparison operators compare two values and return true or false.

### Code Example
```java
public class ComparisonOperators {
    public static void main(String[] args) {
        int x = 10, y = 20;
        System.out.println(x + " == " + y + ": " + (x == y));
        System.out.println(x + " != " + y + ": " + (x != y));
        System.out.println(x + " < " + y + ": " + (x < y));
        System.out.println(x + " > " + y + ": " + (x > y));
    }
}
// Expected Output:
// 10 == 20: false
// 10 != 20: true
// 10 < 20: true
// 10 > 20: false
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Using `==` to compare objects compares references, not content. Use `.equals()` for content comparison.

### Quick Tip ✨
For String comparison, always use `.equals()` method instead of `==` operator.

### Language-Specific Notes
Java has a built-in boolean type that returns true or false.

---

## Logical Operators

### Syntax
```java
result = (condition1 && condition2);  // Logical AND
result = (condition1 || condition2);  // Logical OR
result = !condition;                   // Logical NOT
```

### Explanation
Logical operators combine or invert boolean expressions. They use short-circuit evaluation.

### Code Example
```java
public class LogicalOperators {
    public static void main(String[] args) {
        boolean isAdult = true;
        boolean hasLicense = false;
        System.out.println("Can drive: " + (isAdult && hasLicense));
        System.out.println("Eligible: " + (isAdult || hasLicense));
        System.out.println("Not adult: " + !isAdult);
    }
}
// Expected Output:
// Can drive: false
// Eligible: true
// Not adult: false
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Confusing bitwise operators (`&`, `|`) with logical operators (`&&`, `||`) leads to unexpected behavior.

### Quick Tip ✨
Use logical operators for boolean conditions and bitwise operators for bit manipulation.

### Language-Specific Notes
Java uses short-circuit evaluation: `&&` stops if first operand is false, `||` stops if first operand is true.

---

## Bitwise Operators

### Syntax
```java
result = a & b;   // Bitwise AND
result = a | b;   // Bitwise OR
result = a ^ b;   // Bitwise XOR
result = ~a;      // Bitwise NOT
result = a << n;  // Left shift
result = a >> n;  // Right shift (signed)
result = a >>> n; // Right shift (unsigned)
```

### Explanation
Bitwise operators perform operations on individual bits of integer values.

### Code Example
```java
public class BitwiseOperators {
    public static void main(String[] args) {
        int a = 12;  // 1100 in binary
        int b = 10;  // 1010 in binary
        System.out.println("AND: " + a + " & " + b + " = " + (a & b));    // 1000 = 8
        System.out.println("OR: " + a + " | " + b + " = " + (a | b));     // 1110 = 14
        System.out.println("XOR: " + a + " ^ " + b + " = " + (a ^ b));    // 0110 = 6
        System.out.println("Left shift: " + a + " << 1 = " + (a << 1));   // 11000 = 24
    }
}
// Expected Output:
// AND: 12 & 10 = 8
// OR: 12 | 10 = 14
// XOR: 12 ^ 10 = 6
// Left shift: 12 << 1 = 24
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Java has both signed (`>>`) and unsigned (`>>>`) right shift operators. Choose appropriately.

### Quick Tip ✨
Left shift by n is equivalent to multiplying by 2^n, right shift by n divides by 2^n (for positive numbers).

### Language-Specific Notes
Java's `>>>` operator performs unsigned right shift, filling with zeros regardless of sign.

---

## Assignment Operators

### Syntax
```java
a = value;      // Simple assignment
a += value;     // Add and assign (a = a + value)
a -= value;     // Subtract and assign
a *= value;     // Multiply and assign
a /= value;     // Divide and assign
a %= value;     // Modulus and assign
```

### Explanation
Assignment operators assign values to variables. Compound assignment operators combine an operation with assignment.

### Code Example
```java
public class AssignmentOperators {
    public static void main(String[] args) {
        int score = 100;
        System.out.println("Initial score: " + score);
        score += 50;  // Add 50
        System.out.println("After bonus: " + score);
        score -= 30;  // Subtract 30
        System.out.println("After penalty: " + score);
        score *= 2;   // Double it
        System.out.println("Final score: " + score);
    }
}
// Expected Output:
// Initial score: 100
// After bonus: 150
// After penalty: 120
// Final score: 240
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Forgetting that compound assignments modify the original variable can lead to logic errors.

### Quick Tip ✨
Compound assignment operators are more concise and can be more efficient than separate operations.

### Language-Specific Notes
Assignment in Java is an expression that returns the assigned value, allowing chained assignments.

---

## Ternary Operator

### Syntax
```java
result = condition ? value_if_true : value_if_false;
```

### Explanation
The ternary operator is a compact way to write simple if-else statements. It evaluates a condition and returns one of two values.

### Code Example
```java
public class TernaryOperator {
    public static void main(String[] args) {
        int age = 18;
        String status = (age >= 18) ? "Adult" : "Minor";
        System.out.println("Age: " + age + ", Status: " + status);
        
        int a = 10, b = 20;
        int max = (a > b) ? a : b;
        System.out.println("Maximum of " + a + " and " + b + " is: " + max);
    }
}
// Expected Output:
// Age: 18, Status: Adult
// Maximum of 10 and 20 is: 20
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Overusing ternary operators for complex conditions reduces code readability. Use if-else for clarity.

### Quick Tip ✨
Use ternary operators for simple value assignments based on a single condition.

### Language-Specific Notes
The ternary operator is the only operator in Java that takes three operands.

---

## Increment and Decrement Operators

### Syntax
```java
++variable;  // Pre-increment
variable++;  // Post-increment
--variable;  // Pre-decrement
variable--;  // Post-decrement
```

### Explanation
Increment (++) adds 1 to a variable, decrement (--) subtracts 1. Pre-increment/decrement changes the value before using it, post-increment/decrement changes after.

### Code Example
```java
public class IncrementDecrement {
    public static void main(String[] args) {
        int counter = 5;
        System.out.println("Initial: " + counter);
        System.out.println("Post-increment: " + counter++);  // Prints 5, then increments
        System.out.println("After post-increment: " + counter);
        System.out.println("Pre-increment: " + (++counter));   // Increments, then prints 7
        System.out.println("Pre-decrement: " + (--counter));   // Decrements, then prints 6
    }
}
// Expected Output:
// Initial: 5
// Post-increment: 5
// After post-increment: 6
// Pre-increment: 7
// Pre-decrement: 6
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Confusing pre and post increment/decrement in expressions can lead to off-by-one errors.

### Quick Tip ✨
Use pre-increment (++i) in loops when the return value isn't needed for consistency.

### Language-Specific Notes
Java evaluates increment/decrement operators in a well-defined order, unlike C/C++.

---

[Back to Top](#operators--expressions-in-java) | [Back to Java Index](/Java/) | [Back to Main](/README.md)
