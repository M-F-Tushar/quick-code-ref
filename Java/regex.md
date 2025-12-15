# Regular Expressions in Java

[Back to Java Index](/Java/) | [Back to Main](/README.md)

---

## Pattern Matching

### Code Example
```java
import java.util.regex.*;

public class RegexExample {
    public static void main(String[] args) {
        String text = "My email is test@example.com";
        String pattern = "\\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Z|a-z]{2,}\\b";
        
        Pattern p = Pattern.compile(pattern);
        Matcher m = p.matcher(text);
        
        if (m.find()) {
            System.out.println("Email found: " + m.group());
        }
    }
}
// Expected Output:
// Email found: test@example.com
```

## Pattern Replacement

### Code Example
```java
import java.util.regex.*;

public class RegexReplace {
    public static void main(String[] args) {
        String text = "Phone: 123-456-7890";
        String pattern = "\\d{3}-\\d{3}-\\d{4}";
        String result = text.replaceAll(pattern, "XXX-XXX-XXXX");
        System.out.println(result);
    }
}
// Expected Output:
// Phone: XXX-XXX-XXXX
```

### Common Pitfall ⚠️
Remember to escape backslashes in Java strings: use "\\d" not "\d".

### Quick Tip ✨
Compile Pattern once and reuse Matcher for better performance.

### Language-Specific Notes
Java has comprehensive regex support in java.util.regex package.

---

[Back to Top](#regular-expressions-in-java) | [Back to Java Index](/Java/) | [Back to Main](/README.md)
