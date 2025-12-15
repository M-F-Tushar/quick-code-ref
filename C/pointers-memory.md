# Pointers & Memory Management in C

[Back to C Index](/C/) | [Back to Main](/README.md)

---

## Pointer Basics

### Code Example
```c
#include <stdio.h>

int main() {
    int value = 42;
    int *ptr = &value;  // Pointer to value
    
    printf("Value: %d\n", value);
    printf("Address: %p\n", (void*)ptr);
    printf("Dereferenced: %d\n", *ptr);
    return 0;
}
// Expected Output:
// Value: 42
// Address: 0x... (memory address)
// Dereferenced: 42
```

## Dynamic Memory Allocation

### Code Example
```c
#include <stdio.h>
#include <stdlib.h>

int main() {
    int *arr = (int*)malloc(5 * sizeof(int));
    if (arr == NULL) {
        printf("Memory allocation failed\n");
        return 1;
    }
    
    for (int i = 0; i < 5; i++) {
        arr[i] = i * 10;
    }
    
    for (int i = 0; i < 5; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
    
    free(arr);  // Free memory
    return 0;
}
// Expected Output:
// 0 10 20 30 40
```

### Common Pitfall ⚠️
Memory leaks occur when dynamically allocated memory is not freed.

### Quick Tip ✨
Always pair malloc/calloc with free. Check for NULL after allocation.

### Language-Specific Notes
C requires manual memory management. No garbage collection.

---

[Back to Top](#pointers--memory-management-in-c) | [Back to C Index](/C/) | [Back to Main](/README.md)
