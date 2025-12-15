# Functions in C

[Back to C Index](/C/) | [Back to Main](/README.md)

---

## Function Declaration and Definition

### Syntax
```c
return_type function_name(parameter_type parameter_name);  // Declaration
return_type function_name(parameter_type parameter_name) { // Definition
    // function body
}
```

### Explanation
Functions in C must be declared before use. Declaration (prototype) tells the compiler about the function's signature; definition provides the implementation.

### Code Example
```c
#include <stdio.h>

void greet() {                   // Function definition
    printf("Hello, World!\n");
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
Forgetting to declare function prototypes before main() causes compilation errors or warnings.

### Quick Tip ✨
Place function prototypes at the top of the file or in header files for better organization.

### Language-Specific Notes
C requires forward declarations if functions are defined after their first use. Use header files for large projects.

---

## Function with Parameters

### Syntax
```c
return_type function_name(type1 param1, type2 param2) {
    // use parameters
}
```

### Explanation
Functions can accept parameters (inputs) that are passed by value. The function receives copies of the arguments.

### Code Example
```c
#include <stdio.h>

void printSum(int a, int b) {    // Function with parameters
    int sum = a + b;
    printf("Sum: %d\n", sum);
}

int main() {
    printSum(10, 20);            // Pass arguments
    return 0;
}
// Expected Output:
// Sum: 30
```

### Time/Space Complexity
O(1) time, O(1) space for parameter passing by value

### Common Pitfall ⚠️
C uses pass-by-value by default. Modifying parameters inside functions doesn't affect original variables.

### Quick Tip ✨
Use pointers as parameters when you need to modify the original variable or pass large structures efficiently.

### Language-Specific Notes
C passes all arguments by value. Use pointers (int *ptr) to achieve pass-by-reference behavior.

---

## Function with Return Value

### Syntax
```c
return_type function_name(parameters) {
    // computation
    return value;
}
```

### Explanation
Functions can return a value to the caller using the return statement. The return type must match the declared type.

### Code Example
```c
#include <stdio.h>

int multiply(int a, int b) {     // Function returns int
    return a * b;                // Return the result
}

int main() {
    int result = multiply(5, 6);
    printf("Result: %d\n", result);
    return 0;
}
// Expected Output:
// Result: 30
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Forgetting to return a value from non-void functions leads to undefined behavior.

### Quick Tip ✨
Enable compiler warnings (-Wall) to catch missing return statements.

### Language-Specific Notes
C functions can only return one value. Use pointers or structures to return multiple values.

---

## Recursive Function - Calculate Factorial

### Syntax
```c
return_type function_name(parameters) {
    if (base_case) return base_value;
    return recursive_call;
}
```

### Explanation
Recursive functions call themselves with modified parameters until reaching a base case. Useful for problems with recursive structure.

### Code Example
```c
#include <stdio.h>

int calculateFactorial(int number) {  // Recursive function
    if (number <= 1) {           // Base case
        return 1;
    }
    return number * calculateFactorial(number - 1);  // Recursive call
}

int main() {
    int result = calculateFactorial(5);
    printf("Factorial of 5: %d\n", result);
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
Always ensure the base case is reachable and returns without further recursion.

### Language-Specific Notes
C has limited stack space. For large inputs, iterative solutions or tail recursion optimization may be needed.

---

## Function Pointers

### Syntax
```c
return_type (*pointer_name)(parameter_types);
```

### Explanation
Function pointers store addresses of functions, enabling callbacks and dynamic function calls.

### Code Example
```c
#include <stdio.h>

int add(int a, int b) {
    return a + b;
}

int main() {
    int (*operation)(int, int) = add;  // Function pointer
    int result = operation(15, 25);    // Call through pointer
    printf("Result: %d\n", result);
    return 0;
}
// Expected Output:
// Result: 40
```

### Time/Space Complexity
O(1) time for function pointer call, O(1) space

### Common Pitfall ⚠️
Function pointer syntax is complex. Use typedef to simplify declarations.

### Quick Tip ✨
Use typedef for cleaner syntax: `typedef int (*Operation)(int, int);`

### Language-Specific Notes
Function pointers are powerful but require careful type matching. They enable callbacks and plugin architectures.

---

## Static Functions

### Syntax
```c
static return_type function_name(parameters) {
    // function body
}
```

### Explanation
Static functions have file scope - they're only visible within the file where they're defined. Useful for internal helper functions.

### Code Example
```c
#include <stdio.h>

static int helper(int x) {       // Static function (file scope)
    return x * 2;
}

int main() {
    int result = helper(21);
    printf("Result: %d\n", result);
    return 0;
}
// Expected Output:
// Result: 42
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Static functions cannot be called from other files, even if declared in headers.

### Quick Tip ✨
Use static for internal helper functions to prevent naming conflicts and improve encapsulation.

### Language-Specific Notes
The static keyword has different meanings for functions (file scope) and variables (persistent storage).

---

[Back to Top](#functions-in-c) | [Back to C Index](/C/) | [Back to Main](/README.md)
