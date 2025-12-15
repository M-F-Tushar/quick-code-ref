# Functional Programming Features in C++

[Back to C++ Index](/CPP/) | [Back to Main](/README.md)

---

## Lambda Expressions

### Code Example
```cpp
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main() {
    vector<int> numbers = {1, 2, 3, 4, 5};
    
    // Lambda expression
    auto square = [](int x) { return x * x; };
    
    for (int num : numbers) {
        cout << square(num) << " ";
    }
    cout << endl;
    return 0;
}
// Expected Output:
// 1 4 9 16 25
```

## Map/Transform

### Code Example
```cpp
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main() {
    vector<int> numbers = {1, 2, 3, 4, 5};
    vector<int> squared(5);
    
    transform(numbers.begin(), numbers.end(), squared.begin(),
              [](int x) { return x * x; });
    
    for (int num : squared) {
        cout << num << " ";
    }
    cout << endl;
    return 0;
}
// Expected Output:
// 1 4 9 16 25
```

### Common Pitfall ⚠️
Capture lists in lambdas can be confusing. Use [=] for value, [&] for reference.

### Quick Tip ✨
Use auto keyword for lambda types for cleaner code.

### Language-Specific Notes
C++11+ supports lambda expressions and functional programming features.

---

[Back to Top](#functional-programming-features-in-c) | [Back to C++ Index](/CPP/) | [Back to Main](/README.md)
