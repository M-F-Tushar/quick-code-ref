# Functional Programming Features in Java

[Back to Java Index](/Java/) | [Back to Main](/README.md)

---

## Lambda Expressions

### Code Example
```java
import java.util.Arrays;
import java.util.List;

public class LambdaExample {
    public static void main(String[] args) {
        List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5);
        
        // Lambda expression
        numbers.forEach(n -> System.out.print(n * n + " "));
        System.out.println();
    }
}
// Expected Output:
// 1 4 9 16 25
```

## Stream API (Map, Filter, Reduce)

### Code Example
```java
import java.util.Arrays;
import java.util.List;

public class StreamExample {
    public static void main(String[] args) {
        List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5);
        
        // Map: square each number
        numbers.stream()
               .map(n -> n * n)
               .forEach(n -> System.out.print(n + " "));
        System.out.println();
        
        // Filter: only even numbers
        numbers.stream()
               .filter(n -> n % 2 == 0)
               .forEach(n -> System.out.print(n + " "));
        System.out.println();
        
        // Reduce: sum all numbers
        int sum = numbers.stream()
                         .reduce(0, (a, b) -> a + b);
        System.out.println("Sum: " + sum);
    }
}
// Expected Output:
// 1 4 9 16 25
// 2 4
// Sum: 15
```

### Common Pitfall ⚠️
Streams are lazy and single-use. Create new stream for each operation chain.

### Quick Tip ✨
Use method references (::) for cleaner lambda syntax when possible.

### Language-Specific Notes
Java 8+ supports lambda expressions and Stream API for functional programming.

---

[Back to Top](#functional-programming-features-in-java) | [Back to Java Index](/Java/) | [Back to Main](/README.md)
