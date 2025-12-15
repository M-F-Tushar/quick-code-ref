# Error Handling & Exceptions in C

[Back to C Index](/C/) | [Back to Main](/README.md)

---

## Error Codes

### Explanation
C doesn't have built-in exception handling. Errors are typically handled using return codes and errno.

### Code Example
```c
#include <stdio.h>
#include <stdlib.h>

int divide(int a, int b, int *result) {
    if (b == 0) {
        return -1;  // Error code
    }
    *result = a / b;
    return 0;  // Success
}

int main() {
    int result;
    int status = divide(10, 2, &result);
    
    if (status == 0) {
        printf("Result: %d\n", result);
    } else {
        printf("Error: Division by zero\n");
    }
    return 0;
}
// Expected Output:
// Result: 5
```

### Common Pitfall ⚠️
Not checking return codes leads to undetected errors.

### Quick Tip ✨
Use errno and perror() for system call error handling.

### Language-Specific Notes
C uses error codes, not exceptions. Check return values and errno for errors.

---

[Back to Top](#error-handling--exceptions-in-c) | [Back to C Index](/C/) | [Back to Main](/README.md)
