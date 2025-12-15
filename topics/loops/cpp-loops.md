# Loops (For Loops) in C++

[Back to C++ Index](/CPP/) | [Back to Main](/README.md)

---

## Basic For Loop

### Syntax
```cpp
for (initialization; condition; increment) {
    // code to repeat
}
```

### Explanation
A for loop repeats a block of code while a condition is true. It consists of initialization, condition check, and increment steps.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    for (int i = 1; i <= 5; i++) {  // Loop from 1 to 5
        cout << i << " ";
    }
    cout << endl;
    return 0;
}
// Expected Output:
// 1 2 3 4 5
```

### Time/Space Complexity
O(n) time where n is the number of iterations, O(1) space

### Common Pitfall ⚠️
Off-by-one errors are common. Be careful with <= vs < in loop conditions.

### Quick Tip ✨
C++11 introduced range-based for loops for cleaner iteration over containers.

### Language-Specific Notes
C++ allows variable declaration in the for loop initialization, with scope limited to the loop.

---

## Loop with Array Iteration

### Syntax
```cpp
for (int i = 0; i < array_size; i++) {
    // access array[i]
}
// Or range-based (C++11):
for (const auto& element : array) {
    // use element
}
```

### Explanation
For loops iterate through arrays by accessing each element using its index. C++11 range-based loops provide cleaner syntax.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    int numbers[] = {10, 20, 30, 40, 50};
    int size = 5;
    for (int i = 0; i < size; i++) {  // Iterate through array
        cout << numbers[i] << " ";
    }
    cout << endl;
    return 0;
}
// Expected Output:
// 10 20 30 40 50
```

### Time/Space Complexity
O(n) time where n is array length, O(1) space

### Common Pitfall ⚠️
Array indices start at 0, not 1. Accessing out-of-bounds indices causes undefined behavior.

### Quick Tip ✨
Use range-based for loops with STL containers: `for (auto& num : numbers)` for cleaner code.

### Language-Specific Notes
C++ std::array and STL containers have .size() method. Range-based loops work with any container.

---

## Nested Loops

### Syntax
```cpp
for (init1; condition1; increment1) {
    for (init2; condition2; increment2) {
        // code in inner loop
    }
}
```

### Explanation
Nested loops place one loop inside another. The inner loop completes all iterations for each iteration of the outer loop.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    // 2x2 multiplication table
    for (int i = 1; i <= 2; i++) {      // Outer loop
        for (int j = 1; j <= 2; j++) {  // Inner loop
            cout << i * j << " ";
        }
        cout << endl;
    }
    return 0;
}
// Expected Output:
// 1 2
// 2 4
```

### Time/Space Complexity
O(n * m) time for nested loops with n and m iterations, O(1) space

### Common Pitfall ⚠️
Using the same loop variable name for both loops causes compilation errors in C++ due to scope rules.

### Quick Tip ✨
Use different variable names (i, j, k) for nested loops to avoid confusion and errors.

### Language-Specific Notes
C++ scoping rules prevent accidental variable reuse in nested loops when declared in initialization.

---

## Break Statement

### Syntax
```cpp
for (...) {
    if (condition) {
        break;  // exit loop immediately
    }
}
```

### Explanation
The break statement immediately exits the innermost enclosing loop, skipping remaining iterations.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    for (int i = 1; i <= 10; i++) {
        if (i == 6) {
            break;  // Exit loop when i is 6
        }
        cout << i << " ";
    }
    cout << endl;
    return 0;
}
// Expected Output:
// 1 2 3 4 5
```

### Time/Space Complexity
O(n) time in worst case, can be O(1) to O(n) depending on break condition, O(1) space

### Common Pitfall ⚠️
In nested loops, break only exits the innermost loop, not all loops.

### Quick Tip ✨
Use break with search algorithms to exit early when the target is found.

### Language-Specific Notes
C++ break works with for, while, do-while loops, and switch statements. Use goto for multi-level breaks (rarely).

---

## Continue Statement

### Syntax
```cpp
for (...) {
    if (condition) {
        continue;  // skip to next iteration
    }
}
```

### Explanation
The continue statement skips the rest of the current iteration and moves to the next iteration of the loop.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    for (int i = 1; i <= 5; i++) {
        if (i == 3) {
            continue;  // Skip when i is 3
        }
        cout << i << " ";
    }
    cout << endl;
    return 0;
}
// Expected Output:
// 1 2 4 5
```

### Time/Space Complexity
O(n) time where n is the number of iterations, O(1) space

### Common Pitfall ⚠️
Using continue carelessly can skip important cleanup code. Consider using if-else instead.

### Quick Tip ✨
Use continue to filter out invalid data early in the loop, avoiding deep nesting.

### Language-Specific Notes
In for loops, continue jumps to the increment step. In range-based loops, it moves to the next element.

---

## Sum Calculation Example

### Syntax
```cpp
int sum = 0;
for (int i = start; i <= end; i++) {
    sum += i;
}
```

### Explanation
A common loop pattern accumulates values by adding each element to a running total.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    int sum = 0;
    for (int i = 1; i <= 5; i++) {  // Sum numbers 1 to 5
        sum += i;
    }
    cout << "Sum: " << sum << endl;
    return 0;
}
// Expected Output:
// Sum: 15
```

### Time/Space Complexity
O(n) time where n is the number of iterations, O(1) space

### Common Pitfall ⚠️
Forgetting to initialize the accumulator variable (sum) to 0 causes undefined behavior.

### Quick Tip ✨
Use STL algorithms like std::accumulate for more expressive accumulation operations.

### Language-Specific Notes
C++ offers std::accumulate in <numeric> header for functional-style summation of ranges.

---

[Back to Top](#loops-for-loops-in-c) | [Back to C++ Index](/CPP/) | [Back to Main](/README.md)
