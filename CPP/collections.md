# Collections in C++

[Back to C++ Index](/CPP/) | [Back to Main](/README.md)

---

## Vector (Dynamic Array)

### Syntax
```cpp
std::vector<type> vec;
```

### Code Example
```cpp
#include <iostream>
#include <vector>
using namespace std;

int main() {
    vector<int> numbers = {10, 20, 30};
    numbers.push_back(40);  // Add element
    
    for (int num : numbers) {
        cout << num << " ";
    }
    cout << endl;
    return 0;
}
// Expected Output:
// 10 20 30 40
```

## Set (Unique Elements)

### Code Example
```cpp
#include <iostream>
#include <set>
using namespace std;

int main() {
    set<int> uniqueNumbers = {10, 20, 10, 30};
    uniqueNumbers.insert(40);
    
    for (int num : uniqueNumbers) {
        cout << num << " ";
    }
    cout << endl;
    return 0;
}
// Expected Output:
// 10 20 30 40
```

## Map (Key-Value Pairs)

### Code Example
```cpp
#include <iostream>
#include <map>
using namespace std;

int main() {
    map<string, int> ages;
    ages["Alice"] = 25;
    ages["Bob"] = 30;
    
    for (auto& pair : ages) {
        cout << pair.first << ": " << pair.second << endl;
    }
    return 0;
}
// Expected Output:
// Alice: 25
// Bob: 30
```

### Common Pitfall ⚠️
Maps are ordered by key. Use `unordered_map` for hash-based storage.

### Quick Tip ✨
Use range-based for loops for easy iteration over collections.

### Language-Specific Notes
C++ STL provides vector, list, set, map, and their unordered variants.

---

[Back to Top](#collections-in-c) | [Back to C++ Index](/CPP/) | [Back to Main](/README.md)
