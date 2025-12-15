# Control Flow (If/Else) in C++

[Back to C++ Index](/CPP/) | [Back to Main](/README.md)

---

## Basic If Statement

### Syntax
```cpp
if (condition) {
    // code to execute if condition is true
}
```

### Explanation
The if statement executes a block of code only when the specified condition evaluates to true.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    int score = 85;
    if (score >= 80) {              // Check if score is 80 or above
        cout << "Great job!" << endl;
    }
    return 0;
}
// Expected Output:
// Great job!
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Using assignment (=) instead of comparison (==) in conditions causes logical errors. C++ compilers often warn about this.

### Quick Tip ✨
Enable compiler warnings (-Wall -Wextra) to catch common mistakes like assignment in conditions.

### Language-Specific Notes
C++ has stricter type checking than C. Conditions must evaluate to bool, though implicit conversions from integers still work.

---

## If-Else Statement

### Syntax
```cpp
if (condition) {
    // code if true
} else {
    // code if false
}
```

### Explanation
The if-else statement provides an alternative execution path when the condition is false.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    int score = 85;
    if (score >= 90) {              // Check for excellent score
        cout << "Grade: A" << endl;
    } else {
        cout << "Grade: B or below" << endl;
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
C++ style guides recommend always using braces for consistency and safety, even with single statements.

---

## If-Else-If Chain

### Syntax
```cpp
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
```cpp
#include <iostream>
using namespace std;

int main() {
    int score = 85;                 // Test with 85
    if (score >= 90) {              // Check for A grade
        cout << "Grade: A" << endl;
    } else if (score >= 80) {       // Check for B grade
        cout << "Grade: B" << endl;
    } else if (score >= 70) {       // Check for C grade
        cout << "Grade: C" << endl;
    } else {
        cout << "Grade: F" << endl;
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
Consider using a switch statement or lookup table for many equality comparisons for better readability.

### Language-Specific Notes
C++ evaluates conditions sequentially and short-circuits, stopping at the first true condition.

---

## Nested If Statements

### Syntax
```cpp
if (condition1) {
    if (condition2) {
        // code when both true
    }
}
```

### Explanation
If statements can be nested inside other if statements to check multiple related conditions.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    int score = 85;
    int attendance = 95;
    if (score >= 80) {              // First check score
        if (attendance >= 90) {      // Then check attendance
            cout << "Excellent performance!" << endl;
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
Use logical operators for multiple conditions: `if (score >= 80 && attendance >= 90)` is clearer than nesting.

### Language-Specific Notes
C++ supports early returns and RAII, making it easier to avoid deep nesting compared to languages without these features.

---

## Ternary Operator

### Syntax
```cpp
result = (condition) ? value_if_true : value_if_false;
```

### Explanation
The ternary operator provides a concise way to assign values based on a condition in a single expression.

### Code Example
```cpp
#include <iostream>
#include <string>
using namespace std;

int main() {
    int score = 85;
    string result = (score >= 80) ? "Pass" : "Fail";  // Compact if-else
    cout << "Result: " << result << endl;
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
Use ternary operators only for simple value assignments. They work well for initializing const variables.

### Language-Specific Notes
The ternary operator is an expression and both branches must return compatible types for type deduction to work.

---

[Back to Top](#control-flow-ifelse-in-c) | [Back to C++ Index](/CPP/) | [Back to Main](/README.md)
