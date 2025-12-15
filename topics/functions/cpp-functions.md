# Functions in C++

[Back to C++ Index](/CPP/) | [Back to Main](/README.md)

---

## Function Declaration and Definition

### Syntax
```cpp
return_type function_name(parameter_type parameter_name);  // Declaration
return_type function_name(parameter_type parameter_name) { // Definition
    // function body
}
```

### Explanation
Functions in C++ can be declared and defined separately. Modern C++ also supports inline definitions in headers.

### Code Example
```cpp
#include <iostream>
using namespace std;

void greet() {                   // Function definition
    cout << "Hello, World!" << endl;
}

int main() {
    greet();                     // Function call
    return 0;
}
// Expected Output:
// Hello, World!
```

### Time/Space Complexity
O(1) time for function call overhead, O(1) space for activation record

### Common Pitfall ⚠️
Defining functions in headers without inline can cause multiple definition errors during linking.

### Quick Tip ✨
Use inline keyword or define in .cpp files to avoid multiple definition errors.

### Language-Specific Notes
C++ supports function overloading - multiple functions with the same name but different parameters.

---

## Function with Parameters

### Syntax
```cpp
return_type function_name(type1 param1, type2 param2) {
    // use parameters
}
```

### Explanation
Functions can accept parameters by value, reference, or const reference. References avoid copying large objects.

### Code Example
```cpp
#include <iostream>
using namespace std;

void printSum(int a, int b) {    // Function with parameters
    int sum = a + b;
    cout << "Sum: " << sum << endl;
}

int main() {
    printSum(10, 20);            // Pass arguments
    return 0;
}
// Expected Output:
// Sum: 30
```

### Time/Space Complexity
O(1) time, O(1) space for parameter passing

### Common Pitfall ⚠️
Passing large objects by value causes unnecessary copying. Use const references for efficiency.

### Quick Tip ✨
Use const references for large objects: `void func(const string& str)` to avoid copying.

### Language-Specific Notes
C++ supports pass-by-reference using & (int& ref) and pass-by-const-reference (const int& ref).

---

## Function with Return Value

### Syntax
```cpp
return_type function_name(parameters) {
    // computation
    return value;
}
```

### Explanation
Functions return values to the caller. C++11 auto return type deduction simplifies syntax for complex types.

### Code Example
```cpp
#include <iostream>
using namespace std;

int multiply(int a, int b) {     // Function returns int
    return a * b;                // Return the result
}

int main() {
    int result = multiply(5, 6);
    cout << "Result: " << result << endl;
    return 0;
}
// Expected Output:
// Result: 30
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Returning references to local variables causes undefined behavior (dangling references).

### Quick Tip ✨
Never return references or pointers to local variables. They're destroyed when the function exits.

### Language-Specific Notes
C++ supports return value optimization (RVO) to eliminate unnecessary copying of return values.

---

## Recursive Function - Calculate Factorial

### Syntax
```cpp
return_type function_name(parameters) {
    if (base_case) return base_value;
    return recursive_call;
}
```

### Explanation
Recursive functions call themselves with modified parameters until reaching a base case. Useful for problems with recursive structure.

### Code Example
```cpp
#include <iostream>
using namespace std;

int calculateFactorial(int number) {  // Recursive function
    if (number <= 1) {           // Base case
        return 1;
    }
    return number * calculateFactorial(number - 1);  // Recursive call
}

int main() {
    int result = calculateFactorial(5);
    cout << "Factorial of 5: " << result << endl;
    return 0;
}
// Expected Output:
// Factorial of 5: 120
```

### Time/Space Complexity
O(n) time, O(n) space for call stack where n is the input number

### Common Pitfall ⚠️
Missing or incorrect base case causes infinite recursion and stack overflow.

### Quick Tip ✨
Consider iterative solutions or tail recursion for better performance with large inputs.

### Language-Specific Notes
C++ compilers may optimize tail-recursive functions to iterative loops with -O2 optimization.

---

## Function Overloading

### Syntax
```cpp
return_type function_name(type1 param1);
return_type function_name(type2 param2);
return_type function_name(type1 param1, type2 param2);
```

### Explanation
Function overloading allows multiple functions with the same name but different parameter lists. The compiler selects the appropriate version.

### Code Example
```cpp
#include <iostream>
using namespace std;

int add(int a, int b) {
    return a + b;
}

double add(double a, double b) {  // Overloaded version
    return a + b;
}

int main() {
    cout << "Int: " << add(5, 10) << endl;
    cout << "Double: " << add(5.5, 10.5) << endl;
    return 0;
}
// Expected Output:
// Int: 15
// Double: 16
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Ambiguous overloads (e.g., with default parameters) cause compilation errors.

### Quick Tip ✨
Keep overloaded functions semantically similar - they should perform related operations.

### Language-Specific Notes
C++ uses name mangling to distinguish overloaded functions in the compiled code.

---

## Lambda Functions (C++11)

### Syntax
```cpp
[capture](parameters) -> return_type { body }
// Or with auto return type deduction:
[capture](parameters) { body }
```

### Explanation
Lambda functions are anonymous functions that can capture variables from their enclosing scope. Useful for callbacks and STL algorithms.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    auto multiply = [](int a, int b) { return a * b; };  // Lambda
    int result = multiply(7, 8);
    cout << "Result: " << result << endl;
    return 0;
}
// Expected Output:
// Result: 56
```

### Time/Space Complexity
O(1) time, O(1) space plus captured variables

### Common Pitfall ⚠️
Capturing variables by reference [&] can lead to dangling references if the lambda outlives the captured variables.

### Quick Tip ✨
Use [=] for capture by value (safe but may copy), [&] for capture by reference (efficient but risky).

### Language-Specific Notes
C++14 introduced generic lambdas with auto parameters. C++20 added template parameter support.

---

[Back to Top](#functions-in-c) | [Back to C++ Index](/CPP/) | [Back to Main](/README.md)
