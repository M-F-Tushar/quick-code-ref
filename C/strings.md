# Strings & String Operations in C

[Back to C Index](/C/) | [Back to Main](/README.md)

---

## String Declaration and Initialization

### Syntax
```c
char str[size];
char str[] = "text";
char *str = "text";
```

### Explanation
Strings in C are character arrays terminated with a null character '\0'. They require careful memory management.

### Code Example
```c
#include <stdio.h>
#include <string.h>

int main() {
    char greeting[20] = "Hello";
    char name[] = "Alice";
    printf("Greeting: %s\n", greeting);
    printf("Name: %s\n", name);
    printf("Length: %lu\n", strlen(name));
    return 0;
}
// Expected Output:
// Greeting: Hello
// Name: Alice
// Length: 5
```

### Time/Space Complexity
O(1) time for declaration, O(n) space where n is string length

### Common Pitfall ⚠️
Forgetting to allocate space for the null terminator can cause buffer overflows.

### Quick Tip ✨
Always allocate one extra byte for '\0' when working with strings.

### Language-Specific Notes
C doesn't have a built-in string type. Use character arrays and string.h functions.

---

## String Concatenation

### Syntax
```c
strcat(destination, source);
strncat(destination, source, n);
```

### Explanation
String concatenation appends one string to another. The destination must have enough space.

### Code Example
```c
#include <stdio.h>
#include <string.h>

int main() {
    char fullName[50] = "John";
    char lastName[] = " Doe";
    strcat(fullName, lastName);
    printf("Full name: %s\n", fullName);
    return 0;
}
// Expected Output:
// Full name: John Doe
```

### Time/Space Complexity
O(n + m) time where n and m are string lengths, O(1) space

### Common Pitfall ⚠️
Destination buffer overflow if not large enough to hold concatenated result.

### Quick Tip ✨
Use `strncat()` for safer concatenation with size limits.

### Language-Specific Notes
Always ensure destination has enough space before concatenating.

---

## String Comparison

### Syntax
```c
int result = strcmp(str1, str2);
int result = strncmp(str1, str2, n);
```

### Explanation
String comparison compares two strings lexicographically. Returns 0 if equal, negative if str1 < str2, positive if str1 > str2.

### Code Example
```c
#include <stdio.h>
#include <string.h>

int main() {
    char str1[] = "apple";
    char str2[] = "banana";
    int result = strcmp(str1, str2);
    printf("Comparing '%s' and '%s': %d\n", str1, str2, result);
    if (result < 0) printf("%s comes before %s\n", str1, str2);
    return 0;
}
// Expected Output:
// Comparing 'apple' and 'banana': -1
// apple comes before banana
```

### Time/Space Complexity
O(min(n, m)) time where n and m are string lengths, O(1) space

### Common Pitfall ⚠️
Using `==` to compare strings compares pointers, not content. Always use `strcmp()`.

### Quick Tip ✨
Check if `strcmp()` returns 0 for equality, not the return value itself.

### Language-Specific Notes
`strcmp()` is case-sensitive. Use `strcasecmp()` for case-insensitive comparison (non-standard).

---

## String Copying

### Syntax
```c
strcpy(destination, source);
strncpy(destination, source, n);
```

### Explanation
String copying copies the content of one string to another.

### Code Example
```c
#include <stdio.h>
#include <string.h>

int main() {
    char source[] = "Hello World";
    char destination[50];
    strcpy(destination, source);
    printf("Source: %s\n", source);
    printf("Destination: %s\n", destination);
    return 0;
}
// Expected Output:
// Source: Hello World
// Destination: Hello World
```

### Time/Space Complexity
O(n) time where n is string length, O(1) space

### Common Pitfall ⚠️
Buffer overflow if destination is smaller than source.

### Quick Tip ✨
Use `strncpy()` to limit the number of characters copied for safety.

### Language-Specific Notes
`strcpy()` copies until it finds '\0'. Ensure destination has enough space.

---

## String Searching

### Syntax
```c
char *ptr = strchr(str, character);
char *ptr = strstr(haystack, needle);
```

### Explanation
String searching finds a character or substring within a string.

### Code Example
```c
#include <stdio.h>
#include <string.h>

int main() {
    char text[] = "Hello World";
    char *found = strchr(text, 'W');
    if (found != NULL) {
        printf("Found 'W' at position: %ld\n", found - text);
    }
    
    char *substring = strstr(text, "World");
    if (substring != NULL) {
        printf("Found substring: %s\n", substring);
    }
    return 0;
}
// Expected Output:
// Found 'W' at position: 6
// Found substring: World
```

### Time/Space Complexity
O(n) time for strchr, O(n*m) time for strstr, O(1) space

### Common Pitfall ⚠️
Not checking if the returned pointer is NULL before using it.

### Quick Tip ✨
Calculate position by subtracting the original string pointer from the found pointer.

### Language-Specific Notes
Returns NULL if character/substring not found.

---

## String Formatting

### Syntax
```c
sprintf(buffer, format, arguments...);
snprintf(buffer, size, format, arguments...);
```

### Explanation
String formatting creates formatted strings similar to printf but stores in a buffer.

### Code Example
```c
#include <stdio.h>

int main() {
    char buffer[100];
    int age = 25;
    char name[] = "Alice";
    sprintf(buffer, "Name: %s, Age: %d", name, age);
    printf("%s\n", buffer);
    return 0;
}
// Expected Output:
// Name: Alice, Age: 25
```

### Time/Space Complexity
O(n) time where n is formatted string length, O(1) space

### Common Pitfall ⚠️
Buffer overflow with `sprintf()`. Always use `snprintf()` with size limit.

### Quick Tip ✨
Use `snprintf()` to prevent buffer overflows by specifying maximum size.

### Language-Specific Notes
`snprintf()` is safer and recommended over `sprintf()`.

---

## Case Conversion

### Syntax
```c
int upper = toupper(character);
int lower = tolower(character);
```

### Explanation
Case conversion changes individual characters between uppercase and lowercase.

### Code Example
```c
#include <stdio.h>
#include <ctype.h>
#include <string.h>

int main() {
    char str[] = "Hello World";
    printf("Original: %s\n", str);
    
    for (int i = 0; str[i]; i++) {
        str[i] = toupper(str[i]);
    }
    printf("Uppercase: %s\n", str);
    return 0;
}
// Expected Output:
// Original: Hello World
// Uppercase: HELLO WORLD
```

### Time/Space Complexity
O(n) time where n is string length, O(1) space

### Common Pitfall ⚠️
`toupper()` and `tolower()` work on single characters, not entire strings.

### Quick Tip ✨
Loop through the string to convert each character individually.

### Language-Specific Notes
Include `<ctype.h>` for toupper() and tolower() functions.

---

[Back to Top](#strings--string-operations-in-c) | [Back to C Index](/C/) | [Back to Main](/README.md)
