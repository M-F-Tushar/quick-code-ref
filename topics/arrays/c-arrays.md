# Arrays in C

[Back to C Index](/C/) | [Back to Main](/README.md)

---

## Array Declaration and Initialization

### Syntax
```c
type array_name[size];
type array_name[] = {values};
type array_name[size] = {values};
```

### Explanation
Arrays store multiple elements of the same type in contiguous memory. Size must be known at compile time for stack arrays.

### Code Example
```c
#include <stdio.h>

int main() {
    int numbers[5] = {10, 20, 30, 40, 50};  // Array initialization
    printf("Array created with 5 elements\n");
    return 0;
}
// Expected Output:
// Array created with 5 elements
```

### Time/Space Complexity
O(1) time for declaration, O(n) space where n is array size

### Common Pitfall ⚠️
Uninitialized arrays contain garbage values. Always initialize before use.

### Quick Tip ✨
Use designated initializers (C99): `int arr[5] = {[0]=10, [4]=50};` for sparse initialization.

### Language-Specific Notes
C doesn't track array bounds. You must manually manage array size to prevent buffer overflows.

---

## Accessing Array Elements

### Syntax
```c
array_name[index]
```

### Explanation
Array elements are accessed using zero-based indexing. First element is at index 0, last at size-1.

### Code Example
```c
#include <stdio.h>

int main() {
    int numbers[5] = {10, 20, 30, 40, 50};
    printf("First element: %d\n", numbers[0]);   // Access first
    printf("Third element: %d\n", numbers[2]);   // Access third
    return 0;
}
// Expected Output:
// First element: 10
// Third element: 30
```

### Time/Space Complexity
O(1) time for element access, O(1) space

### Common Pitfall ⚠️
Accessing out-of-bounds indices causes undefined behavior, potentially crashing the program.

### Quick Tip ✨
Always validate indices are within bounds (0 to size-1) before accessing.

### Language-Specific Notes
C provides no bounds checking. Tools like Valgrind or AddressSanitizer can detect out-of-bounds access.

---

## Array Length/Size

### Syntax
```c
sizeof(array) / sizeof(array[0])
```

### Explanation
C doesn't store array size. Calculate it using sizeof operator for stack-allocated arrays.

### Code Example
```c
#include <stdio.h>

int main() {
    int numbers[5] = {10, 20, 30, 40, 50};
    int size = sizeof(numbers) / sizeof(numbers[0]);  // Calculate size
    printf("Array length: %d\n", size);
    return 0;
}
// Expected Output:
// Array length: 5
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
sizeof() trick only works for arrays, not pointers. When array decays to pointer, sizeof returns pointer size.

### Quick Tip ✨
Pass array size as a separate parameter to functions since arrays decay to pointers.

### Language-Specific Notes
This technique works only in the scope where the array is declared. Use VLA or dynamic allocation for runtime sizes.

---

## Iterating Through Arrays

### Syntax
```c
for (int i = 0; i < size; i++) {
    // access array[i]
}
```

### Explanation
Use loops to iterate through array elements. Track the size separately to avoid out-of-bounds access.

### Code Example
```c
#include <stdio.h>

int main() {
    int numbers[5] = {10, 20, 30, 40, 50};
    printf("Elements: ");
    for (int i = 0; i < 5; i++) {            // Iterate through array
        printf("%d ", numbers[i]);
    }
    printf("\n");
    return 0;
}
// Expected Output:
// Elements: 10 20 30 40 50
```

### Time/Space Complexity
O(n) time where n is array length, O(1) space

### Common Pitfall ⚠️
Using <= instead of < in loop condition accesses one element past the array end.

### Quick Tip ✨
Store array size in a variable or use sizeof trick to make loops more maintainable.

### Language-Specific Notes
C99 allows Variable Length Arrays (VLAs) with runtime-determined sizes, but they're optional in C11.

---

## Finding Sum of Array Elements

### Syntax
```c
int sum = 0;
for (int i = 0; i < size; i++) {
    sum += array[i];
}
```

### Explanation
Accumulate values by iterating through the array and adding each element to a running total.

### Code Example
```c
#include <stdio.h>

int main() {
    int numbers[5] = {10, 20, 30, 40, 50};   // Array with known values
    int sum = 0;
    for (int i = 0; i < 5; i++) {            // Sum all elements
        sum += numbers[i];
    }
    printf("Sum: %d\n", sum);
    return 0;
}
// Expected Output:
// Sum: 150
```

### Time/Space Complexity
O(n) time where n is array length, O(1) space

### Common Pitfall ⚠️
Forgetting to initialize sum to 0 causes undefined behavior (garbage value addition).

### Quick Tip ✨
Initialize accumulator variables to appropriate starting values (0 for sum, INT_MAX for min, etc.).

### Language-Specific Notes
C requires explicit initialization of local variables. Always initialize sum = 0 before accumulating.

---

## Multi-dimensional Arrays

### Syntax
```c
type array_name[rows][cols];
type array_name[rows][cols] = {{values}, {values}};
```

### Explanation
Multi-dimensional arrays are arrays of arrays. Memory is laid out in row-major order.

### Code Example
```c
#include <stdio.h>

int main() {
    int matrix[2][3] = {{1, 2, 3}, {4, 5, 6}};  // 2D array
    printf("Element at [0][1]: %d\n", matrix[0][1]);
    printf("Element at [1][2]: %d\n", matrix[1][2]);
    return 0;
}
// Expected Output:
// Element at [0][1]: 2
// Element at [1][2]: 6
```

### Time/Space Complexity
O(1) time for element access, O(rows * cols) space

### Common Pitfall ⚠️
Passing 2D arrays to functions requires specifying column count: `void func(int arr[][3])`.

### Quick Tip ✨
Use nested loops to iterate 2D arrays: outer loop for rows, inner loop for columns.

### Language-Specific Notes
C stores multi-dimensional arrays in contiguous memory in row-major order for cache efficiency.

---

## Array as Function Parameter

### Syntax
```c
return_type function_name(type array[], int size);
return_type function_name(type *array, int size);
```

### Explanation
Arrays decay to pointers when passed to functions. Always pass size separately since size information is lost.

### Code Example
```c
#include <stdio.h>

int sumArray(int arr[], int size) {      // Array parameter
    int sum = 0;
    for (int i = 0; i < size; i++) {
        sum += arr[i];
    }
    return sum;
}

int main() {
    int numbers[5] = {10, 20, 30, 40, 50};
    int result = sumArray(numbers, 5);
    printf("Sum: %d\n", result);
    return 0;
}
// Expected Output:
// Sum: 150
```

### Time/Space Complexity
O(n) time for operations on array, O(1) space for passing (only pointer is passed)

### Common Pitfall ⚠️
sizeof(arr) in the function returns pointer size, not array size. Always pass size explicitly.

### Quick Tip ✨
Use const for array parameters that shouldn't be modified: `const int arr[]`.

### Language-Specific Notes
Array parameters are syntactic sugar for pointer parameters. `int arr[]` and `int *arr` are equivalent in parameter lists.

---

[Back to Top](#arrays-in-c) | [Back to C Index](/C/) | [Back to Main](/README.md)
