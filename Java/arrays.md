# Arrays in Java

[Back to Java Index](/Java/) | [Back to Main](/README.md)

---

## Array Declaration and Initialization

### Syntax
```java
type[] arrayName;                    // Declaration
type[] arrayName = new type[size];   // Declaration with allocation
type[] arrayName = {values};         // Declaration with initialization
```

### Explanation
Java arrays are objects allocated on the heap. They have fixed size determined at creation time.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        int[] numbers = {10, 20, 30, 40, 50};  // Array initialization
        System.out.println("Array created with 5 elements");
    }
}
// Expected Output:
// Array created with 5 elements
```

### Time/Space Complexity
O(n) time for initialization (zeroing memory), O(n) space where n is array size

### Common Pitfall ⚠️
Arrays declared without initialization are null. Arrays created with new are zero-initialized.

### Quick Tip ✨
Use array initializer syntax `{values}` for known values at compile time.

### Language-Specific Notes
Java arrays are objects with a length field. All elements are initialized to default values (0, false, null).

---

## Accessing Array Elements

### Syntax
```java
arrayName[index]
```

### Explanation
Array elements are accessed using zero-based indexing. Java performs automatic bounds checking at runtime.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        int[] numbers = {10, 20, 30, 40, 50};
        System.out.println("First element: " + numbers[0]);   // Access first
        System.out.println("Third element: " + numbers[2]);   // Access third
    }
}
// Expected Output:
// First element: 10
// Third element: 30
```

### Time/Space Complexity
O(1) time for element access, O(1) space

### Common Pitfall ⚠️
Accessing out-of-bounds indices throws ArrayIndexOutOfBoundsException at runtime.

### Quick Tip ✨
Always validate indices are within bounds (0 to length-1) to avoid exceptions.

### Language-Specific Notes
Java provides automatic bounds checking, unlike C/C++. This prevents buffer overflows but adds runtime overhead.

---

## Array Length

### Syntax
```java
arrayName.length
```

### Explanation
Java arrays have a public final length field that stores the number of elements.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        int[] numbers = {10, 20, 30, 40, 50};
        int size = numbers.length;             // Get array length
        System.out.println("Array length: " + size);
    }
}
// Expected Output:
// Array length: 5
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
length is a field (not a method), so don't use parentheses: `array.length`, not `array.length()`.

### Quick Tip ✨
Use length in loops instead of hardcoding size: `for (int i = 0; i < array.length; i++)`.

### Language-Specific Notes
String has length() method, arrays have length field. Don't confuse them.

---

## Iterating Through Arrays

### Syntax
```java
for (int i = 0; i < array.length; i++) { }  // Index-based
for (type element : array) { }               // Enhanced for loop
```

### Explanation
Java provides traditional for loops and enhanced for-each loops for iteration. For-each is cleaner but doesn't provide index.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        int[] numbers = {10, 20, 30, 40, 50};
        System.out.print("Elements: ");
        for (int i = 0; i < numbers.length; i++) {  // Iterate through array
            System.out.print(numbers[i] + " ");
        }
        System.out.println();
    }
}
// Expected Output:
// Elements: 10 20 30 40 50
```

### Time/Space Complexity
O(n) time where n is array length, O(1) space

### Common Pitfall ⚠️
Enhanced for loops cannot modify array elements (the loop variable is a copy).

### Quick Tip ✨
Use enhanced for loop for read-only iteration: `for (int num : numbers)`.

### Language-Specific Notes
Enhanced for loops work with arrays and anything implementing Iterable interface.

---

## Finding Sum of Array Elements

### Syntax
```java
int sum = 0;
for (int i = 0; i < array.length; i++) {
    sum += array[i];
}
```

### Explanation
Accumulate values by iterating through the array and adding each element to a running total.

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        int[] numbers = {10, 20, 30, 40, 50};   // Array with known values
        int sum = 0;
        for (int i = 0; i < numbers.length; i++) {  // Sum all elements
            sum += numbers[i];
        }
        System.out.println("Sum: " + sum);
    }
}
// Expected Output:
// Sum: 150
```

### Time/Space Complexity
O(n) time where n is array length, O(1) space

### Common Pitfall ⚠️
Forgetting to initialize sum to 0 causes compilation error in Java (strict initialization rules).

### Quick Tip ✨
Use Java 8+ streams for functional style: `Arrays.stream(numbers).sum()`.

### Language-Specific Notes
Java requires local variables to be initialized before use, preventing accidental use of garbage values.

---

## Arrays Utility Class

### Syntax
```java
import java.util.Arrays;
Arrays.method(array);
```

### Explanation
Java provides Arrays utility class with static methods for common operations like sorting, searching, and converting to strings.

### Code Example
```java
import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        int[] numbers = {10, 20, 30, 40, 50};
        System.out.println("Array: " + Arrays.toString(numbers));
        Arrays.sort(numbers);  // Sort array
        System.out.println("Index of 30: " + Arrays.binarySearch(numbers, 30));
    }
}
// Expected Output:
// Array: [10, 20, 30, 40, 50]
// Index of 30: 2
```

### Time/Space Complexity
Varies by method: sort is O(n log n), binarySearch is O(log n)

### Common Pitfall ⚠️
binarySearch requires sorted array. Results are undefined for unsorted arrays.

### Quick Tip ✨
Use Arrays.toString() for debugging - it prints arrays in readable format [1, 2, 3].

### Language-Specific Notes
Arrays class also provides fill(), equals(), copyOf() for common array operations.

---

## Multi-dimensional Arrays

### Syntax
```java
type[][] arrayName = new type[rows][cols];
type[][] arrayName = {{values}, {values}};
```

### Explanation
Multi-dimensional arrays are arrays of arrays. Java allows jagged arrays (rows with different lengths).

### Code Example
```java
public class Main {
    public static void main(String[] args) {
        int[][] matrix = {{1, 2, 3}, {4, 5, 6}};  // 2D array
        System.out.println("Element at [0][1]: " + matrix[0][1]);
        System.out.println("Element at [1][2]: " + matrix[1][2]);
    }
}
// Expected Output:
// Element at [0][1]: 2
// Element at [1][2]: 6
```

### Time/Space Complexity
O(1) time for element access, O(rows * cols) space for rectangular arrays

### Common Pitfall ⚠️
2D array length gives row count: `matrix.length`. Column count is `matrix[0].length`.

### Quick Tip ✨
Java supports jagged arrays: `int[][] jagged = {{1, 2}, {3, 4, 5, 6}};` with different row lengths.

### Language-Specific Notes
Java 2D arrays are actually arrays of array references, allowing flexible jagged structures.

---

[Back to Top](#arrays-in-java) | [Back to Java Index](/Java/) | [Back to Main](/README.md)
