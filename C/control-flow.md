# Control Flow (If/Else) in C

[Back to C Index](/C/) | [Back to Main](/README.md)

---

## Basic If Statement

### Syntax
```c
if (condition) {
    // code to execute if condition is true
}
```

### Explanation
The if statement executes a block of code only when the specified condition evaluates to true (non-zero).

### Code Example
```c
#include <stdio.h>

int main() {
    int score = 85;
    if (score >= 80) {              // Check if score is 80 or above
        printf("Great job!\n");
    }
    return 0;
}
// Expected Output:
// Great job!
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Using assignment (=) instead of comparison (==) in conditions causes logical errors and may suppress warnings.

### Quick Tip ✨
Place constants on the left side of comparisons (`if (80 == score)`) to catch accidental assignments at compile time.

### Language-Specific Notes
In C, any non-zero value is true, and zero is false. Empty blocks must have at least a semicolon or comment.

---

## If-Else Statement

### Syntax
```c
if (condition) {
    // code if true
} else {
    // code if false
}
```

### Explanation
The if-else statement provides an alternative execution path when the condition is false (zero).

### Code Example
```c
#include <stdio.h>

int main() {
    int score = 85;
    if (score >= 90) {              // Check for excellent score
        printf("Grade: A\n");
    } else {
        printf("Grade: B or below\n");
    }
    return 0;
}
// Expected Output:
// Grade: B or below
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Forgetting braces for multi-line blocks can lead to logic errors, especially when adding code later.

### Quick Tip ✨
Always use braces {} even for single-line blocks to prevent future bugs when code is modified.

### Language-Specific Notes
C requires explicit braces or allows single statements after if/else without braces, but braces are recommended.

---

## If-Else-If Chain

### Syntax
```c
if (condition1) {
    // code for condition1
} else if (condition2) {
    // code for condition2
} else {
    // code if all conditions false
}
```

### Explanation
Multiple conditions can be checked in sequence. The first true condition executes its block, then the chain exits.

### Code Example
```c
#include <stdio.h>

int main() {
    int score = 85;                 // Test with 85
    if (score >= 90) {              // Check for A grade
        printf("Grade: A\n");
    } else if (score >= 80) {       // Check for B grade
        printf("Grade: B\n");
    } else if (score >= 70) {       // Check for C grade
        printf("Grade: C\n");
    } else {
        printf("Grade: F\n");
    }
    return 0;
}
// Expected Output:
// Grade: B
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Order matters! Place more specific conditions before general ones to avoid unreachable code.

### Quick Tip ✨
Arrange conditions from most restrictive to least restrictive for clarity and correctness.

### Language-Specific Notes
C evaluates conditions sequentially and stops at the first true condition. Subsequent conditions are not evaluated.

---

## Nested If Statements

### Syntax
```c
if (condition1) {
    if (condition2) {
        // code when both true
    }
}
```

### Explanation
If statements can be nested inside other if statements to check multiple related conditions.

### Code Example
```c
#include <stdio.h>

int main() {
    int score = 85;
    int attendance = 95;
    if (score >= 80) {              // First check score
        if (attendance >= 90) {      // Then check attendance
            printf("Excellent performance!\n");
        }
    }
    return 0;
}
// Expected Output:
// Excellent performance!
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Deep nesting reduces readability. Consider using logical operators (&&, ||) or early returns instead.

### Quick Tip ✨
Limit nesting to 2-3 levels. Use logical operators or extract logic into functions for better readability.

### Language-Specific Notes
C allows unlimited nesting, but excessive nesting makes code harder to maintain and understand.

---

## Ternary Operator

### Syntax
```c
result = (condition) ? value_if_true : value_if_false;
```

### Explanation
The ternary operator provides a concise way to assign values based on a condition in a single expression.

### Code Example
```c
#include <stdio.h>

int main() {
    int score = 85;
    char* result = (score >= 80) ? "Pass" : "Fail";  // Compact if-else
    printf("Result: %s\n", result);
    return 0;
}
// Expected Output:
// Result: Pass
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Nesting ternary operators creates unreadable code. Use regular if-else for complex conditions.

### Quick Tip ✨
Use ternary operators only for simple value assignments. For complex logic, use if-else statements.

### Language-Specific Notes
The ternary operator is an expression, not a statement, so it can be used in places where statements aren't allowed.

---

[Back to Top](#control-flow-ifelse-in-c) | [Back to C Index](/C/) | [Back to Main](/README.md)
