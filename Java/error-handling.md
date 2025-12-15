# Error Handling & Exceptions in Java

[Back to Java Index](/Java/) | [Back to Main](/README.md)

---

## Try-Catch Blocks

### Code Example
```java
public class ErrorHandling {
    public static int divide(int a, int b) {
        if (b == 0) {
            throw new ArithmeticException("Division by zero");
        }
        return a / b;
    }
    
    public static void main(String[] args) {
        try {
            int result = divide(10, 0);
            System.out.println("Result: " + result);
        } catch (ArithmeticException e) {
            System.out.println("Error: " + e.getMessage());
        } finally {
            System.out.println("Cleanup code here");
        }
    }
}
// Expected Output:
// Error: Division by zero
// Cleanup code here
```

### Common Pitfall ⚠️
Catching generic Exception hides specific error types. Be specific when possible.

### Quick Tip ✨
Use finally block for cleanup code that must run regardless of exceptions.

### Language-Specific Notes
Java has checked and unchecked exceptions. Checked exceptions must be declared or caught.

---

[Back to Top](#error-handling--exceptions-in-java) | [Back to Java Index](/Java/) | [Back to Main](/README.md)
