# Loops (For Loops) in Java

[Back to Java Index](/Java/) | [Back to Main](/README.md)

---

## Basic For Loop

### Syntax
```java
for (initialization; condition; increment) {
    // code to repeat
}
```

### Explanation
A for loop repeats a block of code while a condition is true. It consists of initialization, condition check, and increment steps.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        for (int i = 1; i <= 5; i++) {  // Loop from 1 to 5
            System.out.print(i + " ");
        }
        System.out.println();
    }
}
// Expected Output:
// 1 2 3 4 5
```

### Time/Space Complexity
O(n) time where n is the number of iterations, O(1) space

### Common Pitfall ⚠️
Off-by-one errors are common. Be careful with <= vs < in loop conditions.

### Quick Tip ✨
Java also has enhanced for-each loops for cleaner iteration over collections and arrays.

### Language-Specific Notes
Java requires explicit braces or allows single statements. Loop variables are scoped to the loop block.

---

## Loop with Array Iteration

### Syntax
```java
for (int i = 0; i < array.length; i++) {
    // access array[i]
}
// Or enhanced for loop:
for (type element : array) {
    // use element
}
```

### Explanation
For loops iterate through arrays by accessing each element using its index. Enhanced for loops provide cleaner syntax.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        int[] numbers = {10, 20, 30, 40, 50};
        for (int i = 0; i < numbers.length; i++) {  // Iterate through array
            System.out.print(numbers[i] + " ");
        }
        System.out.println();
    }
}
// Expected Output:
// 10 20 30 40 50
```

### Time/Space Complexity
O(n) time where n is array length, O(1) space

### Common Pitfall ⚠️
Array indices start at 0, not 1. Accessing out-of-bounds indices throws ArrayIndexOutOfBoundsException.

### Quick Tip ✨
Use array.length property instead of hardcoding array size for flexibility and safety.

### Language-Specific Notes
Java arrays have a .length property (not a method). Enhanced for loops work with arrays and Iterable collections.

---

## Nested Loops

### Syntax
```java
for (init1; condition1; increment1) {
    for (init2; condition2; increment2) {
        // code in inner loop
    }
}
```

### Explanation
Nested loops place one loop inside another. The inner loop completes all iterations for each iteration of the outer loop.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        // 2x2 multiplication table
        for (int i = 1; i <= 2; i++) {      // Outer loop
            for (int j = 1; j <= 2; j++) {  // Inner loop
                System.out.print(i * j + " ");
            }
            System.out.println();
        }
    }
}
// Expected Output:
// 1 2
// 2 4
```

### Time/Space Complexity
O(n * m) time for nested loops with n and m iterations, O(1) space

### Common Pitfall ⚠️
Using the same loop variable name for both loops causes compilation errors due to scope conflicts.

### Quick Tip ✨
Extract inner loops into separate methods when complexity increases for better maintainability.

### Language-Specific Notes
Java's scoping rules prevent variable shadowing in the same block, catching reuse errors at compile time.

---

## Break Statement

### Syntax
```java
for (...) {
    if (condition) {
        break;  // exit loop immediately
    }
}
```

### Explanation
The break statement immediately exits the innermost enclosing loop, skipping remaining iterations.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        for (int i = 1; i <= 10; i++) {
            if (i == 6) {
                break;  // Exit loop when i is 6
            }
            System.out.print(i + " ");
        }
        System.out.println();
    }
}
// Expected Output:
// 1 2 3 4 5
```

### Time/Space Complexity
O(n) time in worst case, can be O(1) to O(n) depending on break condition, O(1) space

### Common Pitfall ⚠️
In nested loops, break only exits the innermost loop. Use labeled breaks for outer loops.

### Quick Tip ✨
Java supports labeled breaks: `break outerLoop;` to exit multiple nested loops at once.

### Language-Specific Notes
Java's labeled break is a clean alternative to goto, allowing controlled exit from nested loops.

---

## Continue Statement

### Syntax
```java
for (...) {
    if (condition) {
        continue;  // skip to next iteration
    }
}
```

### Explanation
The continue statement skips the rest of the current iteration and moves to the next iteration of the loop.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        for (int i = 1; i <= 5; i++) {
            if (i == 3) {
                continue;  // Skip when i is 3
            }
            System.out.print(i + " ");
        }
        System.out.println();
    }
}
// Expected Output:
// 1 2 4 5
```

### Time/Space Complexity
O(n) time where n is the number of iterations, O(1) space

### Common Pitfall ⚠️
Overusing continue can make code logic hard to follow. Consider using if-else blocks instead.

### Quick Tip ✨
Use continue to filter invalid data early in loops, avoiding deep nesting of conditional logic.

### Language-Specific Notes
Java also supports labeled continue to skip to the next iteration of an outer loop in nested structures.

---

## Sum Calculation Example

### Syntax
```java
int sum = 0;
for (int i = start; i <= end; i++) {
    sum += i;
}
```

### Explanation
A common loop pattern accumulates values by adding each element to a running total.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        int sum = 0;
        for (int i = 1; i <= 5; i++) {  // Sum numbers 1 to 5
            sum += i;
        }
        System.out.println("Sum: " + sum);
    }
}
// Expected Output:
// Sum: 15
```

### Time/Space Complexity
O(n) time where n is the number of iterations, O(1) space

### Common Pitfall ⚠️
Forgetting to initialize the accumulator variable (sum) to 0 causes compilation error in Java.

### Quick Tip ✨
Java requires explicit initialization of local variables, preventing accidental use of undefined values.

### Language-Specific Notes
Java's strict initialization rules catch uninitialized variable errors at compile time, unlike C/C++.

---

[Back to Top](#loops-for-loops-in-java) | [Back to Java Index](/Java/) | [Back to Main](/README.md)
