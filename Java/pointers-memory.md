# Pointers & Memory Management in Java

[Back to Java Index](/Java/) | [Back to Main](/README.md)

---

## References (No Pointers)

### Explanation
Java doesn't have pointers. All objects are accessed through references with automatic garbage collection.

### Code Example
```java
public class ReferenceExample {
    public static void main(String[] args) {
        String str1 = "Hello";
        String str2 = str1;  // Reference copy
        
        System.out.println("str1: " + str1);
        System.out.println("str2: " + str2);
        System.out.println("Same reference: " + (str1 == str2));
    }
}
// Expected Output:
// str1: Hello
// str2: Hello
// Same reference: true
```

## Garbage Collection

### Explanation
Java automatically manages memory through garbage collection. No manual deallocation needed.

### Code Example
```java
public class GCExample {
    public static void main(String[] args) {
        String temp = new String("Temporary");
        // Object becomes eligible for GC when no longer referenced
        temp = null;
        System.gc();  // Suggest garbage collection (not guaranteed)
        System.out.println("GC suggested");
    }
}
```

### Common Pitfall ⚠️
Memory leaks can still occur if objects are unintentionally kept in memory.

### Quick Tip ✨
Set references to null when done to help garbage collector.

### Language-Specific Notes
Java uses automatic garbage collection. No manual memory management required.

---

[Back to Top](#pointers--memory-management-in-java) | [Back to Java Index](/Java/) | [Back to Main](/README.md)
