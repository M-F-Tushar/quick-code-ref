# Functional Programming Features in C

[Back to C Index](/C/) | [Back to Main](/README.md)

---

## Function Pointers (Closest to Functional)

### Explanation
C doesn't have built-in functional programming features, but function pointers can simulate some concepts.

### Code Example
```c
#include <stdio.h>

// Function that takes another function as parameter
int apply(int x, int (*func)(int)) {
    return func(x);
}

int square(int x) {
    return x * x;
}

int main() {
    int result = apply(5, square);
    printf("Result: %d\n", result);
    return 0;
}
// Expected Output:
// Result: 25
```

### Common Pitfall ⚠️
C lacks lambda expressions and closures. Must use named functions.

### Quick Tip ✨
Use function pointers to pass functions as arguments.

### Language-Specific Notes
C is procedural. Functional programming requires manual implementation.

---

[Back to Top](#functional-programming-features-in-c) | [Back to C Index](/C/) | [Back to Main](/README.md)
