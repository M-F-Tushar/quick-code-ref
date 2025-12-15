# Pointers & Memory Management in C++

[Back to C++ Index](/CPP/) | [Back to Main](/README.md)

---

## Pointer Basics

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    int value = 42;
    int *ptr = &value;
    
    cout << "Value: " << value << endl;
    cout << "Address: " << ptr << endl;
    cout << "Dereferenced: " << *ptr << endl;
    return 0;
}
```

## Dynamic Memory (new/delete)

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    int *arr = new int[5];
    
    for (int i = 0; i < 5; i++) {
        arr[i] = i * 10;
    }
    
    for (int i = 0; i < 5; i++) {
        cout << arr[i] << " ";
    }
    cout << endl;
    
    delete[] arr;  // Free memory
    return 0;
}
// Expected Output:
// 0 10 20 30 40
```

## Smart Pointers

### Code Example
```cpp
#include <iostream>
#include <memory>
using namespace std;

int main() {
    unique_ptr<int> ptr = make_unique<int>(42);
    cout << "Value: " << *ptr << endl;
    // Automatic cleanup, no delete needed
    return 0;
}
```

### Common Pitfall ⚠️
Use smart pointers (unique_ptr, shared_ptr) to avoid manual memory management.

### Quick Tip ✨
Prefer smart pointers over raw pointers for automatic memory management.

### Language-Specific Notes
C++11+ provides smart pointers for automatic memory management.

---

[Back to Top](#pointers--memory-management-in-c) | [Back to C++ Index](/CPP/) | [Back to Main](/README.md)
