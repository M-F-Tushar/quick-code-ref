# Arrays in C++

[Back to C++ Index](/CPP/) | [Back to Main](/README.md)

---

## Array Declaration and Initialization

### Syntax
```cpp
type array_name[size];
type array_name[] = {values};
std::array<type, size> array_name = {values};  // C++11
```

### Explanation
C++ supports C-style arrays and std::array (C++11) which provides safer array operations with bounds checking in debug mode.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    int numbers[5] = {10, 20, 30, 40, 50};  // Array initialization
    cout << "Array created with 5 elements" << endl;
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
Prefer std::array or std::vector over C-style arrays for better safety and features.

### Language-Specific Notes
C++11 std::array is a template wrapper providing size(), iterators, and compile-time bounds checking.

---

## Accessing Array Elements

### Syntax
```cpp
array_name[index]         // Unchecked access
array_name.at(index)      // Checked access (std::array)
```

### Explanation
Array elements are accessed using zero-based indexing. std::array provides at() for bounds-checked access.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    int numbers[5] = {10, 20, 30, 40, 50};
    cout << "First element: " << numbers[0] << endl;   // Access first
    cout << "Third element: " << numbers[2] << endl;   // Access third
    return 0;
}
// Expected Output:
// First element: 10
// Third element: 30
```

### Time/Space Complexity
O(1) time for element access, O(1) space

### Common Pitfall ⚠️
Using [] doesn't check bounds. Use at() with std::array for runtime bounds checking.

### Quick Tip ✨
Use std::array with at() during development for safety, [] in performance-critical sections after validation.

### Language-Specific Notes
C++ std::array provides operator[] (unchecked) and at() (checked) for different safety/performance trade-offs.

---

## Array Length/Size

### Syntax
```cpp
sizeof(array) / sizeof(array[0])  // C-style
array_name.size()                  // std::array
```

### Explanation
C-style arrays use sizeof trick; std::array provides size() member function for cleaner syntax.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    int numbers[5] = {10, 20, 30, 40, 50};
    int size = sizeof(numbers) / sizeof(numbers[0]);  // Calculate size
    cout << "Array length: " << size << endl;
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
Use std::array which tracks size: `std::array<int, 5> arr; arr.size(); // returns 5`.

### Language-Specific Notes
std::array knows its size at compile time. Use std::vector for runtime-sized dynamic arrays.

---

## Iterating Through Arrays

### Syntax
```cpp
for (int i = 0; i < size; i++) { }        // Index-based
for (auto& element : array) { }            // Range-based (C++11)
```

### Explanation
C++11 range-based for loops provide cleaner syntax for iterating. They work with C-style arrays and containers.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    int numbers[5] = {10, 20, 30, 40, 50};
    cout << "Elements: ";
    for (int i = 0; i < 5; i++) {            // Iterate through array
        cout << numbers[i] << " ";
    }
    cout << endl;
    return 0;
}
// Expected Output:
// Elements: 10 20 30 40 50
```

### Time/Space Complexity
O(n) time where n is array length, O(1) space

### Common Pitfall ⚠️
Range-based for loops with auto create copies. Use `auto&` for references to avoid copying.

### Quick Tip ✨
Use `for (const auto& elem : array)` for read-only iteration to prevent copies and modifications.

### Language-Specific Notes
Range-based for loops (C++11) work with arrays, std::array, std::vector, and any container with iterators.

---

## Finding Sum of Array Elements

### Syntax
```cpp
int sum = 0;
for (int i = 0; i < size; i++) {
    sum += array[i];
}
// Or use std::accumulate (C++)
```

### Explanation
Accumulate values by iterating through the array. C++ also provides std::accumulate from <numeric> header.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    int numbers[5] = {10, 20, 30, 40, 50};   // Array with known values
    int sum = 0;
    for (int i = 0; i < 5; i++) {            // Sum all elements
        sum += numbers[i];
    }
    cout << "Sum: " << sum << endl;
    return 0;
}
// Expected Output:
// Sum: 150
```

### Time/Space Complexity
O(n) time where n is array length, O(1) space

### Common Pitfall ⚠️
Forgetting to initialize sum to 0 causes undefined behavior.

### Quick Tip ✨
Use `std::accumulate(begin, end, 0)` from <numeric> for functional-style summation.

### Language-Specific Notes
C++ provides algorithm library with accumulate, min_element, max_element for common array operations.

---

## std::array (C++11)

### Syntax
```cpp
#include <array>
std::array<type, size> array_name = {values};
```

### Explanation
std::array is a container wrapper around fixed-size arrays with no overhead and safer operations.

### Code Example
```cpp
#include <iostream>
#include <array>
using namespace std;

int main() {
    array<int, 5> numbers = {10, 20, 30, 40, 50};
    cout << "Size: " << numbers.size() << endl;
    cout << "First: " << numbers.front() << endl;
    cout << "Last: " << numbers.back() << endl;
    return 0;
}
// Expected Output:
// Size: 5
// First: 10
// Last: 50
```

### Time/Space Complexity
O(1) time for operations, O(n) space where n is array size

### Common Pitfall ⚠️
std::array size must be known at compile time. Use std::vector for dynamic sizing.

### Quick Tip ✨
std::array provides iterators, making it compatible with STL algorithms unlike C-style arrays.

### Language-Specific Notes
std::array has zero overhead compared to C-style arrays but offers methods like size(), front(), back().

---

## Multi-dimensional Arrays

### Syntax
```cpp
type array_name[rows][cols];
std::array<std::array<type, cols>, rows> array_name;
```

### Explanation
Multi-dimensional arrays can be C-style or nested std::array. Memory is laid out in row-major order.

### Code Example
```cpp
#include <iostream>
using namespace std;

int main() {
    int matrix[2][3] = {{1, 2, 3}, {4, 5, 6}};  // 2D array
    cout << "Element at [0][1]: " << matrix[0][1] << endl;
    cout << "Element at [1][2]: " << matrix[1][2] << endl;
    return 0;
}
// Expected Output:
// Element at [0][1]: 2
// Element at [1][2]: 6
```

### Time/Space Complexity
O(1) time for element access, O(rows * cols) space

### Common Pitfall ⚠️
Mixing std::array dimensions can be confusing. Consider using std::vector<std::vector<T>> for flexibility.

### Quick Tip ✨
For dynamic 2D arrays, use `std::vector<std::vector<int>>` for resizable dimensions.

### Language-Specific Notes
C++ provides std::mdspan (C++23) for multi-dimensional array views without storage overhead.

---

[Back to Top](#arrays-in-c) | [Back to C++ Index](/CPP/) | [Back to Main](/README.md)
