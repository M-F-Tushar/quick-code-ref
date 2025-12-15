# Collections in C

[Back to C Index](/C/) | [Back to Main](/README.md)

---

## Arrays (Basic Collection)

### Syntax
```c
type array[size];
```

### Explanation
C doesn't have built-in dynamic collections like other languages. Arrays are the primary collection type, with fixed size.

### Code Example
```c
#include <stdio.h>

int main() {
    int numbers[5] = {10, 20, 30, 40, 50};
    printf("Array elements:\n");
    for (int i = 0; i < 5; i++) {
        printf("%d ", numbers[i]);
    }
    printf("\n");
    return 0;
}
// Expected Output:
// Array elements:
// 10 20 30 40 50
```

### Common Pitfall ⚠️
C arrays have fixed size and no bounds checking. Manual memory management required for dynamic arrays.

### Quick Tip ✨
Use `malloc()` and `realloc()` for dynamic array-like behavior.

### Language-Specific Notes
C requires manual implementation of lists, sets, and maps using structs and pointers.

---

## Dynamic Arrays (Manual Implementation)

### Code Example
```c
#include <stdio.h>
#include <stdlib.h>

int main() {
    int *dynamicArray;
    int size = 5;
    
    // Allocate memory
    dynamicArray = (int*)malloc(size * sizeof(int));
    
    // Initialize
    for (int i = 0; i < size; i++) {
        dynamicArray[i] = i * 10;
    }
    
    // Print
    for (int i = 0; i < size; i++) {
        printf("%d ", dynamicArray[i]);
    }
    printf("\n");
    
    // Free memory
    free(dynamicArray);
    return 0;
}
// Expected Output:
// 0 10 20 30 40
```

### Common Pitfall ⚠️
Always free dynamically allocated memory to prevent memory leaks.

### Quick Tip ✨
Check if `malloc()` returns NULL before using the pointer.

### Language-Specific Notes
C requires manual memory management for all dynamic data structures.

---

[Back to Top](#collections-in-c) | [Back to C Index](/C/) | [Back to Main](/README.md)
