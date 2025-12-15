# Loops (For Loops) in C

[Back to C Index](/C/) | [Back to Main](/README.md)

---

## Basic For Loop

### Syntax
```c
for (initialization; condition; increment) {
    // code to repeat
}
```

### Explanation
A for loop repeats a block of code while a condition is true. It consists of initialization, condition check, and increment steps.

### Code Example
```c
#include <stdio.h>

int main() {
    for (int i = 1; i <= 5; i++) {  // Loop from 1 to 5
        printf("%d ", i);
    }
    printf("\n");
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
Use descriptive loop variable names for nested loops (i, j, k is ok for simple loops).

### Language-Specific Notes
In C99 and later, you can declare loop variables in the initialization (int i = 0). In C89, declare before the loop.

---

## Loop with Array Iteration

### Syntax
```c
for (int i = 0; i < array_size; i++) {
    // access array[i]
}
```

### Explanation
For loops are commonly used to iterate through arrays by accessing each element using its index.

### Code Example
```c
#include <stdio.h>

int main() {
    int numbers[] = {10, 20, 30, 40, 50};
    int size = 5;
    for (int i = 0; i < size; i++) {  // Iterate through array
        printf("%d ", numbers[i]);
    }
    printf("\n");
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
Use `sizeof(array)/sizeof(array[0])` to calculate array size for stack-allocated arrays.

### Language-Specific Notes
C doesn't track array bounds. You must manually track array size to prevent buffer overruns.

---

## Nested Loops

### Syntax
```c
for (init1; condition1; increment1) {
    for (init2; condition2; increment2) {
        // code in inner loop
    }
}
```

### Explanation
Nested loops place one loop inside another. The inner loop completes all iterations for each iteration of the outer loop.

### Code Example
```c
#include <stdio.h>

int main() {
    // 2x2 multiplication table
    for (int i = 1; i <= 2; i++) {      // Outer loop
        for (int j = 1; j <= 2; j++) {  // Inner loop
            printf("%d ", i * j);
        }
        printf("\n");
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
Using the same loop variable name for both loops causes logical errors. Use different names (i, j, k).

### Quick Tip ✨
Limit nesting to 2-3 levels for readability. Deeper nesting should be refactored into functions.

### Language-Specific Notes
C allows any depth of nesting, but excessive nesting hurts performance and readability.

---

## Break Statement

### Syntax
```c
for (...) {
    if (condition) {
        break;  // exit loop immediately
    }
}
```

### Explanation
The break statement immediately exits the innermost enclosing loop, skipping remaining iterations.

### Code Example
```c
#include <stdio.h>

int main() {
    for (int i = 1; i <= 10; i++) {
        if (i == 6) {
            break;  // Exit loop when i is 6
        }
        printf("%d ", i);
    }
    printf("\n");
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
Use break to exit early from loops when a search condition is met for better efficiency.

### Language-Specific Notes
C's break statement works with loops (for, while, do-while) and switch statements.

---

## Continue Statement

### Syntax
```c
for (...) {
    if (condition) {
        continue;  // skip to next iteration
    }
}
```

### Explanation
The continue statement skips the rest of the current iteration and moves to the next iteration of the loop.

### Code Example
```c
#include <stdio.h>

int main() {
    for (int i = 1; i <= 5; i++) {
        if (i == 3) {
            continue;  // Skip when i is 3
        }
        printf("%d ", i);
    }
    printf("\n");
    return 0;
}
// Expected Output:
// 1 2 4 5
```

### Time/Space Complexity
O(n) time where n is the number of iterations, O(1) space

### Common Pitfall ⚠️
Using continue in the wrong place can create infinite loops if the increment is skipped.

### Quick Tip ✨
Use continue to skip invalid data or special cases without deep nesting of if statements.

### Language-Specific Notes
In for loops, continue jumps to the increment step. In while loops, it jumps to the condition check.

---

## Sum Calculation Example

### Syntax
```c
int sum = 0;
for (int i = start; i <= end; i++) {
    sum += i;
}
```

### Explanation
A common loop pattern accumulates values by adding each element to a running total.

### Code Example
```c
#include <stdio.h>

int main() {
    int sum = 0;
    for (int i = 1; i <= 5; i++) {  // Sum numbers 1 to 5
        sum += i;
    }
    printf("Sum: %d\n", sum);
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
Always initialize accumulator variables before the loop to avoid garbage values.

### Language-Specific Notes
C requires explicit initialization. Uninitialized local variables contain random values.

---

[Back to Top](#loops-for-loops-in-c) | [Back to C Index](/C/) | [Back to Main](/README.md)
