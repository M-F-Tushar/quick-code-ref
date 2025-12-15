# Operators & Expressions in C++

[Back to C++ Index](/CPP/) | [Back to Main](/README.md)

---

## Arithmetic Operators

### Syntax
```cpp
result = operand1 + operand2;  // Addition
result = operand1 - operand2;  // Subtraction
result = operand1 * operand2;  // Multiplication
result = operand1 / operand2;  // Division
result = operand1 % operand2;  // Modulus (remainder)
```

### Explanation
Arithmetic operators perform mathematical calculations on numeric values. Division of integers truncates the decimal part.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    int a = 15, b = 4;
    cout << "Addition: " << a << " + " << b << " = " << (a + b) << endl;
    cout << "Subtraction: " << a << " - " << b << " = " << (a - b) << endl;
    cout << "Multiplication: " << a << " * " << b << " = " << (a * b) << endl;
    cout << "Division: " << a << " / " << b << " = " << (a / b) << endl;
    cout << "Modulus: " << a << " % " << b << " = " << (a % b) << endl;
    return 0;
}
// Expected Output:
// Addition: 15 + 4 = 19
// Subtraction: 15 - 4 = 11
// Multiplication: 15 * 4 = 60
// Division: 15 / 4 = 3
// Modulus: 15 % 4 = 3
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Integer division truncates the decimal part. Use floating-point types for precise division results.

### Quick Tip ✨
Cast at least one operand to double when you need decimal results: `static_cast<double>(a) / b`

### Language-Specific Notes
C++ does not have a power operator. Use `pow()` from cmath for exponentiation.

---

## Comparison Operators

### Syntax
```cpp
result = (a == b);  // Equal to
result = (a != b);  // Not equal to
result = (a < b);   // Less than
result = (a > b);   // Greater than
result = (a <= b);  // Less than or equal to
result = (a >= b);  // Greater than or equal to
```

### Explanation
Comparison operators compare two values and return true or false.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    int x = 10, y = 20;
    cout << x << " == " << y << ": " << (x == y) << endl;
    cout << x << " != " << y << ": " << (x != y) << endl;
    cout << x << " < " << y << ": " << (x < y) << endl;
    cout << x << " > " << y << ": " << (x > y) << endl;
    return 0;
}
// Expected Output:
// 10 == 20: 0
// 10 != 20: 1
// 10 < 20: 1
// 10 > 20: 0
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Using assignment operator `=` instead of comparison operator `==` in conditions is a common mistake.

### Quick Tip ✨
C++20 introduces the spaceship operator `<=>` for three-way comparison.

### Language-Specific Notes
C++ has a built-in bool type that returns true or false (displayed as 1 or 0 by default).

---

## Logical Operators

### Syntax
```cpp
result = (condition1 && condition2);  // Logical AND
result = (condition1 || condition2);  // Logical OR
result = !condition;                   // Logical NOT
```

### Explanation
Logical operators combine or invert boolean expressions. They use short-circuit evaluation.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    bool isAdult = true;
    bool hasLicense = false;
    cout << "Can drive: " << (isAdult && hasLicense) << endl;
    cout << "Eligible: " << (isAdult || hasLicense) << endl;
    cout << "Not adult: " << !isAdult << endl;
    return 0;
}
// Expected Output:
// Can drive: 0
// Eligible: 1
// Not adult: 0
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Confusing bitwise operators (`&`, `|`) with logical operators (`&&`, `||`) leads to unexpected behavior.

### Quick Tip ✨
Use logical operators for boolean conditions and bitwise operators for bit manipulation.

### Language-Specific Notes
C++ uses short-circuit evaluation: `&&` stops if first operand is false, `||` stops if first operand is true.

---

## Bitwise Operators

### Syntax
```cpp
result = a & b;   // Bitwise AND
result = a | b;   // Bitwise OR
result = a ^ b;   // Bitwise XOR
result = ~a;      // Bitwise NOT
result = a << n;  // Left shift
result = a >> n;  // Right shift
```

### Explanation
Bitwise operators perform operations on individual bits of integer values.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    unsigned int a = 12;  // 1100 in binary
    unsigned int b = 10;  // 1010 in binary
    cout << "AND: " << a << " & " << b << " = " << (a & b) << endl;    // 1000 = 8
    cout << "OR: " << a << " | " << b << " = " << (a | b) << endl;     // 1110 = 14
    cout << "XOR: " << a << " ^ " << b << " = " << (a ^ b) << endl;    // 0110 = 6
    cout << "Left shift: " << a << " << 1 = " << (a << 1) << endl;     // 11000 = 24
    return 0;
}
// Expected Output:
// AND: 12 & 10 = 8
// OR: 12 | 10 = 14
// XOR: 12 ^ 10 = 6
// Left shift: 12 << 1 = 24
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Right shift behavior on negative numbers is implementation-defined. Use unsigned types for predictable results.

### Quick Tip ✨
Left shift by n is equivalent to multiplying by 2^n, right shift by n divides by 2^n (for positive numbers).

### Language-Specific Notes
Use unsigned integers for bitwise operations to avoid undefined behavior with signed integers.

---

## Assignment Operators

### Syntax
```cpp
a = value;      // Simple assignment
a += value;     // Add and assign (a = a + value)
a -= value;     // Subtract and assign
a *= value;     // Multiply and assign
a /= value;     // Divide and assign
a %= value;     // Modulus and assign
```

### Explanation
Assignment operators assign values to variables. Compound assignment operators combine an operation with assignment.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    int score = 100;
    cout << "Initial score: " << score << endl;
    score += 50;  // Add 50
    cout << "After bonus: " << score << endl;
    score -= 30;  // Subtract 30
    cout << "After penalty: " << score << endl;
    score *= 2;   // Double it
    cout << "Final score: " << score << endl;
    return 0;
}
// Expected Output:
// Initial score: 100
// After bonus: 150
// After penalty: 120
// Final score: 240
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Forgetting that compound assignments modify the original variable can lead to logic errors.

### Quick Tip ✨
Compound assignment operators are more concise and can be more efficient than separate operations.

### Language-Specific Notes
Assignment in C++ is an expression that returns a reference to the left operand, allowing chained assignments.

---

## Ternary Operator

### Syntax
```cpp
result = condition ? value_if_true : value_if_false;
```

### Explanation
The ternary operator is a compact way to write simple if-else statements. It evaluates a condition and returns one of two values.

### Code Example
```cpp
#include <iostream>
#include <string>
using namespace std;

int main() {
    int age = 18;
    string status = (age >= 18) ? "Adult" : "Minor";
    cout << "Age: " << age << ", Status: " << status << endl;
    
    int a = 10, b = 20;
    int max = (a > b) ? a : b;
    cout << "Maximum of " << a << " and " << b << " is: " << max << endl;
    return 0;
}
// Expected Output:
// Age: 18, Status: Adult
// Maximum of 10 and 20 is: 20
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Overusing ternary operators for complex conditions reduces code readability. Use if-else for clarity.

### Quick Tip ✨
Use ternary operators for simple value assignments based on a single condition.

### Language-Specific Notes
The ternary operator is the only operator in C++ that takes three operands.

---

## Increment and Decrement Operators

### Syntax
```cpp
++variable;  // Pre-increment
variable++;  // Post-increment
--variable;  // Pre-decrement
variable--;  // Post-decrement
```

### Explanation
Increment (++) adds 1 to a variable, decrement (--) subtracts 1. Pre-increment/decrement changes the value before using it, post-increment/decrement changes after.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    int counter = 5;
    cout << "Initial: " << counter << endl;
    cout << "Post-increment: " << counter++ << endl;  // Prints 5, then increments
    cout << "After post-increment: " << counter << endl;
    cout << "Pre-increment: " << ++counter << endl;   // Increments, then prints 7
    cout << "Pre-decrement: " << --counter << endl;   // Decrements, then prints 6
    return 0;
}
// Expected Output:
// Initial: 5
// Post-increment: 5
// After post-increment: 6
// Pre-increment: 7
// Pre-decrement: 6
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Confusing pre and post increment/decrement in expressions can lead to off-by-one errors.

### Quick Tip ✨
Use pre-increment (++i) in loops when the return value isn't needed - it can be slightly more efficient.

### Language-Specific Notes
C++ allows operator overloading, so increment/decrement can be customized for user-defined types.

---

[Back to Top](#operators--expressions-in-c) | [Back to C++ Index](/CPP/) | [Back to Main](/README.md)
