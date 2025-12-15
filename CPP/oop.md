# Object-Oriented Programming in C++

[Back to C++ Index](/CPP/) | [Back to Main](/README.md)

---

## Class Definition and Objects

### Code Example
```cpp
#include <iostream>
#include <string>
using namespace std;

class Person {
private:
    string name;
    int age;
    
public:
    // Constructor
    Person(string n, int a) : name(n), age(a) {}
    
    // Method
    void display() {
        cout << "Name: " << name << ", Age: " << age << endl;
    }
};

int main() {
    Person person("Alice", 25);
    person.display();
    return 0;
}
// Expected Output:
// Name: Alice, Age: 25
```

## Inheritance

### Code Example
```cpp
#include <iostream>
using namespace std;

class Animal {
public:
    void eat() { cout << "Eating..." << endl; }
};

class Dog : public Animal {
public:
    void bark() { cout << "Barking..." << endl; }
};

int main() {
    Dog dog;
    dog.eat();   // Inherited method
    dog.bark();  // Own method
    return 0;
}
// Expected Output:
// Eating...
// Barking...
```

### Common Pitfall ⚠️
Forgetting to make destructors virtual in base classes can cause memory leaks.

### Quick Tip ✨
Use access specifiers (public, private, protected) to control encapsulation.

### Language-Specific Notes
C++ supports multiple inheritance, unlike Java and C#.

---

[Back to Top](#object-oriented-programming-in-c) | [Back to C++ Index](/CPP/) | [Back to Main](/README.md)
