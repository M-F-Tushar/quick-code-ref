# Error Handling & Exceptions in C++

[Back to C++ Index](/CPP/) | [Back to Main](/README.md)

---

## Try-Catch Blocks

### Code Example
```cpp
#include <iostream>
#include <stdexcept>
using namespace std;

int divide(int a, int b) {
    if (b == 0) {
        throw runtime_error("Division by zero");
    }
    return a / b;
}

int main() {
    try {
        int result = divide(10, 0);
        cout << "Result: " << result << endl;
    } catch (const runtime_error& e) {
        cout << "Error: " << e.what() << endl;
    }
    return 0;
}
// Expected Output:
// Error: Division by zero
```

### Common Pitfall ⚠️
Not catching exceptions by reference can cause object slicing.

### Quick Tip ✨
Use specific exception types and catch by const reference.

### Language-Specific Notes
C++ supports exception handling with try-catch blocks and throw statements.

---

[Back to Top](#error-handling--exceptions-in-c) | [Back to C++ Index](/CPP/) | [Back to Main](/README.md)
