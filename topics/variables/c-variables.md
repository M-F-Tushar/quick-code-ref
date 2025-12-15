# Variables & Data Types in C

[Back to C Index](/C/) | [Back to Main](/README.md)

---

## Integer Declaration and Initialization

### Syntax
```c
int variableName;
int variableName = value;
```

### Explanation
Integers in C store whole numbers. They must be declared with a type before use and can be initialized at declaration or later.

### Code Example
```c
#include <stdio.h>

int main() {
    int userAge = 25;              // Initialize with value
    int maxScore = 100;            // Another integer
    printf("Age: %d\n", userAge);  // Print integer
    printf("Max Score: %d\n", maxScore);
    return 0;
}
// Expected Output: 
// Age: 25
// Max Score: 100
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Using uninitialized variables leads to undefined behavior. Always initialize variables before use.

### Quick Tip ✨
Use meaningful variable names like `userAge` instead of single letters like `a` for better code readability.

### Language-Specific Notes
C requires explicit type declaration. Integer size is typically 4 bytes but can vary by platform.

---

## String Declaration and Initialization

### Syntax
```c
char stringName[size];
char stringName[] = "text";
```

### Explanation
Strings in C are character arrays terminated with a null character '\0'. They require careful memory management.

### Code Example
```c
#include <stdio.h>
#include <string.h>

int main() {
    char userName[50] = "Alice";   // Fixed-size character array
    printf("Name: %s\n", userName); // Print string
    printf("Length: %lu\n", strlen(userName)); // Get length
    return 0;
}
// Expected Output:
// Name: Alice
// Length: 5
```

### Time/Space Complexity
O(1) time for declaration, O(n) time for string operations where n is string length

### Common Pitfall ⚠️
Forgetting to allocate enough space for the null terminator can cause buffer overflows.

### Quick Tip ✨
Always allocate one extra byte for the null terminator ('\0') when working with strings.

### Language-Specific Notes
C doesn't have a built-in string type. Use character arrays and string.h functions for string operations.

---

## Boolean Values

### Syntax
```c
#include <stdbool.h>
bool variableName = true/false;
```

### Explanation
C99 introduced the bool type via stdbool.h. Before C99, integers were used (0 for false, non-zero for true).

### Code Example
```c
#include <stdio.h>
#include <stdbool.h>

int main() {
    bool isActive = true;          // Boolean variable
    bool isComplete = false;       // Another boolean
    printf("Active: %d\n", isActive);     // Prints 1
    printf("Complete: %d\n", isComplete); // Prints 0
    return 0;
}
// Expected Output:
// Active: 1
// Complete: 0
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
In older C code (pre-C99), any non-zero value is true. This can lead to confusion when comparing boolean values.

### Quick Tip ✨
Include `<stdbool.h>` for better code clarity when working with boolean values.

### Language-Specific Notes
Without stdbool.h, use int with 0 for false and 1 for true. The bool type is actually an alias for _Bool.

---

## Type Conversion and Casting

### Syntax
```c
(targetType) expression
```

### Explanation
Type casting converts a value from one data type to another. Can be implicit (automatic) or explicit (manual).

### Code Example
```c
#include <stdio.h>

int main() {
    int totalScore = 85;
    int maxScore = 100;
    double percentage = (double)totalScore / maxScore * 100; // Explicit cast
    printf("Score: %d/%d\n", totalScore, maxScore);
    printf("Percentage: %.2f%%\n", percentage);
    return 0;
}
// Expected Output:
// Score: 85/100
// Percentage: 85.00%
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Integer division truncates decimals. Always cast to float/double before division when decimal precision is needed.

### Quick Tip ✨
Cast at least one operand to double when performing division to preserve decimal values.

### Language-Specific Notes
C performs implicit type conversion (promotion) in mixed-type expressions, but explicit casting is safer and clearer.

---

## Constants

### Syntax
```c
const type variableName = value;
#define CONSTANT_NAME value
```

### Explanation
Constants are values that cannot be modified after initialization. Use `const` keyword or `#define` preprocessor directive.

### Code Example
```c
#include <stdio.h>
#define PI 3.14159

int main() {
    const int maxAttempts = 3;     // Constant variable
    const double gravity = 9.81;   // Another constant
    printf("Max Attempts: %d\n", maxAttempts);
    printf("PI: %.5f\n", PI);
    printf("Gravity: %.2f m/s²\n", gravity);
    return 0;
}
// Expected Output:
// Max Attempts: 3
// PI: 3.14159
// Gravity: 9.81 m/s²
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
`#define` constants don't have type checking and can lead to subtle bugs. Prefer `const` variables.

### Quick Tip ✨
Use UPPERCASE names for `#define` constants and camelCase with `const` prefix for const variables.

### Language-Specific Notes
`const` variables have type safety and scope, while `#define` is a simple text replacement by preprocessor.

---

[Back to Top](#variables--data-types-in-c) | [Back to C Index](/C/) | [Back to Main](/README.md)
