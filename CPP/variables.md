# Variables & Data Types in C++

[Back to C++ Index](/CPP/) | [Back to Main](/README.md)

---

## Integer Declaration and Initialization

### Syntax
```cpp
int variableName;
int variableName = value;
int variableName(value);  // Constructor syntax
int variableName{value};  // Uniform initialization (C++11)
```

### Explanation
Integers in C++ store whole numbers. C++ offers multiple initialization syntaxes including uniform initialization which prevents narrowing conversions.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    int userAge = 25;              // Initialize with value
    int maxScore = 100;            // Another integer
    cout << "Age: " << userAge << endl;  // Print integer
    cout << "Max Score: " << maxScore << endl;
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
Use uniform initialization `int x{5};` to catch narrowing conversions at compile time.

### Language-Specific Notes
C++ supports auto type deduction: `auto userAge = 25;` automatically infers int type.

---

## String Declaration and Initialization

### Syntax
```cpp
#include <string>
string variableName;
string variableName = "text";
```

### Explanation
C++ provides a built-in string class that handles memory management automatically, unlike C-style character arrays.

### Code Example
```cpp
#include <iostream>
#include <string>
using namespace std;

int main() {
    string userName = "Alice";     // String object
    cout << "Name: " << userName << endl; // Print string
    cout << "Length: " << userName.length() << endl; // Get length
    return 0;
}
// Expected Output:
// Name: Alice
// Length: 5
```

### Time/Space Complexity
O(1) time for declaration, O(n) time for string operations where n is string length

### Common Pitfall ⚠️
Forgetting to `#include <string>` when using the string class will cause compilation errors.

### Quick Tip ✨
Use the string class instead of C-style char arrays for safer and easier string manipulation.

### Language-Specific Notes
C++ string class provides methods like `.length()`, `.substr()`, `.find()` and automatic memory management.

---

## Boolean Values

### Syntax
```cpp
bool variableName = true/false;
```

### Explanation
C++ has a native bool type that can only hold true or false values, providing type safety for boolean operations.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    bool isActive = true;          // Boolean variable
    bool isComplete = false;       // Another boolean
    cout << "Active: " << boolalpha << isActive << endl;     // Prints true
    cout << "Complete: " << boolalpha << isComplete << endl; // Prints false
    return 0;
}
// Expected Output:
// Active: true
// Complete: false
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Without `boolalpha` manipulator, booleans print as 1/0 instead of true/false.

### Quick Tip ✨
Use `cout << boolalpha` to display boolean values as "true" or "false" instead of 1 or 0.

### Language-Specific Notes
C++ bool is a distinct type, unlike C where it's defined via stdbool.h. It provides better type safety.

---

## Type Conversion and Casting

### Syntax
```cpp
static_cast<targetType>(expression)  // Preferred C++ style
(targetType) expression              // C-style cast
```

### Explanation
C++ offers multiple casting operators. static_cast is the preferred method for compile-time type conversions with type checking.

### Code Example
```cpp
#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    int totalScore = 85;
    int maxScore = 100;
    double percentage = static_cast<double>(totalScore) / maxScore * 100;
    cout << "Score: " << totalScore << "/" << maxScore << endl;
    cout << fixed << setprecision(2) << "Percentage: " << percentage << "%" << endl;
    return 0;
}
// Expected Output:
// Score: 85/100
// Percentage: 85.00%
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Using C-style casts bypasses type checking. Always prefer static_cast for safer type conversions.

### Quick Tip ✨
Use `static_cast` for compile-time checked conversions and avoid C-style casts in C++ code.

### Language-Specific Notes
C++ provides four cast operators: static_cast, dynamic_cast, const_cast, and reinterpret_cast for different scenarios.

---

## Constants

### Syntax
```cpp
const type variableName = value;
constexpr type variableName = value;  // C++11
#define CONSTANT_NAME value
```

### Explanation
Constants are immutable values. C++ offers const for runtime constants and constexpr for compile-time constants.

### Code Example
```cpp
#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    const int maxAttempts = 3;     // Runtime constant
    constexpr double PI = 3.14159; // Compile-time constant
    const double gravity = 9.81;   // Another constant
    cout << "Max Attempts: " << maxAttempts << endl;
    cout << fixed << setprecision(5) << "PI: " << PI << endl;
    cout << setprecision(2) << "Gravity: " << gravity << " m/s²" << endl;
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
Using #define instead of const/constexpr loses type safety and debugging information.

### Quick Tip ✨
Prefer `constexpr` for compile-time constants and `const` for runtime constants over `#define`.

### Language-Specific Notes
constexpr (C++11) allows compile-time evaluation, enabling use in template parameters and array sizes.

---

[Back to Top](#variables--data-types-in-c) | [Back to C++ Index](/CPP/) | [Back to Main](/README.md)
