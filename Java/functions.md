# Functions (Methods) in Java

[Back to Java Index](/Java/) | [Back to Main](/README.md)

---

## Method Declaration and Definition

### Syntax
```java
access_modifier return_type methodName(parameter_type parameter_name) {
    // method body
}
```

### Explanation
In Java, functions are called methods and must be defined within a class. Methods can have access modifiers (public, private, protected).

### Code Example
```java
public class Main {
    public static void greet() {  // Method definition
        System.out.println("Hello, World!");
    }
    
    public static void main(String[] args) {
        greet();                  // Method call
    }
}
// Expected Output:
// Hello, World!
```

### Time/Space Complexity
O(1) time for method call overhead, O(1) space for activation record

### Common Pitfall ⚠️
Forgetting static keyword for methods called from static main() causes compilation errors.

### Quick Tip ✨
Use static for utility methods that don't need instance state; use instance methods otherwise.

### Language-Specific Notes
Java requires all methods to be inside classes. Use static for class-level methods, omit for instance methods.

---

## Method with Parameters

### Syntax
```java
return_type methodName(type1 param1, type2 param2) {
    // use parameters
}
```

### Explanation
Methods can accept parameters. Java uses pass-by-value for primitives and pass-by-reference for objects.

### Code Example
```java
public class Main {
    public static void printSum(int a, int b) {  // Method with parameters
        int sum = a + b;
        System.out.println("Sum: " + sum);
    }
    
    public static void main(String[] args) {
        printSum(10, 20);        // Pass arguments
    }
}
// Expected Output:
// Sum: 30
```

### Time/Space Complexity
O(1) time, O(1) space for parameter passing

### Common Pitfall ⚠️
Primitives are passed by value (copy), but objects are passed by reference (can be modified).

### Quick Tip ✨
Use immutable objects (like String) or defensive copying when you don't want methods to modify arguments.

### Language-Specific Notes
Java passes primitives by value and object references by value (the reference itself is copied).

---

## Method with Return Value

### Syntax
```java
return_type methodName(parameters) {
    // computation
    return value;
}
```

### Explanation
Methods return values to the caller using the return statement. The return type must match the declared type.

### Code Example
```java
public class Main {
    public static int multiply(int a, int b) {  // Method returns int
        return a * b;            // Return the result
    }
    
    public static void main(String[] args) {
        int result = multiply(5, 6);
        System.out.println("Result: " + result);
    }
}
// Expected Output:
// Result: 30
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Forgetting to return a value from non-void methods causes compilation errors (Java is strict).

### Quick Tip ✨
Java's compiler ensures all code paths return a value, catching missing return statements at compile time.

### Language-Specific Notes
Java methods can only return one value. Use objects, arrays, or collections to return multiple values.

---

## Recursive Method - Calculate Factorial

### Syntax
```java
return_type methodName(parameters) {
    if (base_case) return base_value;
    return recursive_call;
}
```

### Explanation
Recursive methods call themselves with modified parameters until reaching a base case. Useful for problems with recursive structure.

### Code Example
```java
public class Main {
    public static int calculateFactorial(int number) {  // Recursive method
        if (number <= 1) {       // Base case
            return 1;
        }
        return number * calculateFactorial(number - 1);  // Recursive call
    }
    
    public static void main(String[] args) {
        int result = calculateFactorial(5);
        System.out.println("Factorial of 5: " + result);
    }
}
// Expected Output:
// Factorial of 5: 120
```

### Time/Space Complexity
O(n) time, O(n) space for call stack where n is the input number

### Common Pitfall ⚠️
Missing or incorrect base case causes StackOverflowError due to infinite recursion.

### Quick Tip ✨
For large inputs, consider iterative solutions to avoid stack overflow exceptions.

### Language-Specific Notes
Java has limited stack space. Tail recursion is not optimized in Java, unlike some other languages.

---

## Method Overloading

### Syntax
```java
return_type methodName(type1 param1);
return_type methodName(type2 param2);
return_type methodName(type1 param1, type2 param2);
```

### Explanation
Method overloading allows multiple methods with the same name but different parameter lists. The compiler selects based on arguments.

### Code Example
```java
public class Main {
    public static int add(int a, int b) {
        return a + b;
    }
    
    public static double add(double a, double b) {  // Overloaded version
        return a + b;
    }
    
    public static void main(String[] args) {
        System.out.println("Int: " + add(5, 10));
        System.out.println("Double: " + add(5.5, 10.5));
    }
}
// Expected Output:
// Int: 15
// Double: 16.0
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Changing only the return type doesn't create a valid overload - parameters must differ.

### Quick Tip ✨
Method overloading improves API usability by providing intuitive variations of the same operation.

### Language-Specific Notes
Java uses method signature (name + parameter types) for overload resolution, not return type.

---

## Variable Arguments (Varargs)

### Syntax
```java
return_type methodName(type... paramName) {
    // paramName is treated as an array
}
```

### Explanation
Varargs allow methods to accept variable number of arguments. The parameter is treated as an array inside the method.

### Code Example
```java
public class Main {
    public static int sum(int... numbers) {  // Varargs parameter
        int total = 0;
        for (int num : numbers) {
            total += num;
        }
        return total;
    }
    
    public static void main(String[] args) {
        System.out.println("Sum: " + sum(1, 2, 3, 4, 5));
    }
}
// Expected Output:
// Sum: 15
```

### Time/Space Complexity
O(n) time where n is number of arguments, O(n) space for array

### Common Pitfall ⚠️
Varargs must be the last parameter in the method signature. Only one varargs parameter allowed.

### Quick Tip ✨
Use varargs for utility methods where the number of inputs varies, like logging or mathematical operations.

### Language-Specific Notes
Java internally converts varargs into an array. You can pass an array directly to a varargs parameter.

---

[Back to Top](#functions-methods-in-java) | [Back to Java Index](/Java/) | [Back to Main](/README.md)
