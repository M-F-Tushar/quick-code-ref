# Collections in Java

[Back to Java Index](/Java/) | [Back to Main](/README.md)

---

## ArrayList (Dynamic Array)

### Code Example
```java
import java.util.ArrayList;

public class ArrayListExample {
    public static void main(String[] args) {
        ArrayList<Integer> numbers = new ArrayList<>();
        numbers.add(10);
        numbers.add(20);
        numbers.add(30);
        
        for (int num : numbers) {
            System.out.print(num + " ");
        }
        System.out.println();
    }
}
// Expected Output:
// 10 20 30
```

## HashSet (Unique Elements)

### Code Example
```java
import java.util.HashSet;

public class SetExample {
    public static void main(String[] args) {
        HashSet<Integer> uniqueNumbers = new HashSet<>();
        uniqueNumbers.add(10);
        uniqueNumbers.add(20);
        uniqueNumbers.add(10);  // Duplicate, won't be added
        
        for (int num : uniqueNumbers) {
            System.out.print(num + " ");
        }
        System.out.println();
    }
}
// Expected Output:
// 10 20
```

## HashMap (Key-Value Pairs)

### Code Example
```java
import java.util.HashMap;

public class MapExample {
    public static void main(String[] args) {
        HashMap<String, Integer> ages = new HashMap<>();
        ages.put("Alice", 25);
        ages.put("Bob", 30);
        
        for (String name : ages.keySet()) {
            System.out.println(name + ": " + ages.get(name));
        }
    }
}
// Expected Output:
// Alice: 25
// Bob: 30
```

### Common Pitfall ⚠️
HashMap doesn't maintain insertion order. Use LinkedHashMap for ordered iteration.

### Quick Tip ✨
Use generics to ensure type safety in collections.

### Language-Specific Notes
Java Collections Framework provides List, Set, Map interfaces with multiple implementations.

---

[Back to Top](#collections-in-java) | [Back to Java Index](/Java/) | [Back to Main](/README.md)
