# Regular Expressions in C

[Back to C Index](/C/) | [Back to Main](/README.md)

---

## Regex Library (POSIX)

### Explanation
C supports regex through POSIX regex.h library. Not as feature-rich as other languages.

### Code Example
```c
#include <stdio.h>
#include <regex.h>
#include <string.h>

int main() {
    regex_t regex;
    int result;
    
    // Compile regex pattern
    result = regcomp(&regex, "[0-9]+", REG_EXTENDED);
    if (result) {
        printf("Could not compile regex\n");
        return 1;
    }
    
    // Test strings
    char *test1 = "abc123def";
    char *test2 = "abcdef";
    
    result = regexec(&regex, test1, 0, NULL, 0);
    printf("'%s' %s\n", test1, result == 0 ? "matches" : "doesn't match");
    
    result = regexec(&regex, test2, 0, NULL, 0);
    printf("'%s' %s\n", test2, result == 0 ? "matches" : "doesn't match");
    
    regfree(&regex);
    return 0;
}
// Expected Output:
// 'abc123def' matches
// 'abcdef' doesn't match
```

### Common Pitfall ⚠️
Must compile regex before use and free it after. Check return codes.

### Quick Tip ✨
Use REG_EXTENDED flag for extended regex features.

### Language-Specific Notes
C regex support is basic. Consider using PCRE library for advanced features.

---

[Back to Top](#regular-expressions-in-c) | [Back to C Index](/C/) | [Back to Main](/README.md)
