# Object-Oriented Programming in C

[Back to C Index](/C/) | [Back to Main](/README.md)

---

## Struct-Based OOP

### Explanation
C doesn't have built-in OOP features, but you can simulate objects using structs and function pointers.

### Code Example
```c
#include <stdio.h>
#include <string.h>

// Define a "class" using struct
typedef struct {
    char name[50];
    int age;
} Person;

// "Constructor" function
Person createPerson(const char* name, int age) {
    Person p;
    strcpy(p.name, name);
    p.age = age;
    return p;
}

// "Method" function
void displayPerson(Person* p) {
    printf("Name: %s, Age: %d\n", p->name, p->age);
}

int main() {
    Person person = createPerson("Alice", 25);
    displayPerson(&person);
    return 0;
}
// Expected Output:
// Name: Alice, Age: 25
```

### Common Pitfall ⚠️
C doesn't have encapsulation or inheritance. Must manually implement OOP patterns.

### Quick Tip ✨
Use function pointers in structs to simulate methods.

### Language-Specific Notes
C is procedural, not object-oriented. OOP requires manual implementation.

---

[Back to Top](#object-oriented-programming-in-c) | [Back to C Index](/C/) | [Back to Main](/README.md)
