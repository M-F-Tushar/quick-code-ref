# Strings & String Operations in C++

[Back to C++ Index](/CPP/) | [Back to Main](/README.md)

---

## String Declaration and Initialization

### Syntax
```cpp
std::string str;
std::string str = "text";
std::string str("text");
```

### Explanation
C++ provides the `std::string` class for easier string handling compared to C-style character arrays.

### Code Example
```cpp
#include <iostream>
#include <string>
using namespace std;

int main() {
    string greeting = "Hello";
    string name("Alice");
    cout << "Greeting: " << greeting << endl;
    cout << "Name: " << name << endl;
    cout << "Length: " << name.length() << endl;
    return 0;
}
// Expected Output:
// Greeting: Hello
// Name: Alice
// Length: 5
```

### Time/Space Complexity
O(1) time for declaration, O(n) space where n is string length

### Common Pitfall ⚠️
Mixing C-style strings (char*) with std::string can cause confusion.

### Quick Tip ✨
Use `std::string` for automatic memory management and easier operations.

### Language-Specific Notes
C++ strings are mutable and handle memory automatically.

---

## String Concatenation

### Syntax
```cpp
string result = str1 + str2;
str1 += str2;
str1.append(str2);
```

### Explanation
String concatenation in C++ is simple using the + operator or append() method.

### Code Example
```cpp
#include <iostream>
#include <string>
using namespace std;

int main() {
    string firstName = "John";
    string lastName = " Doe";
    string fullName = firstName + lastName;
    cout << "Full name: " << fullName << endl;
    return 0;
}
// Expected Output:
// Full name: John Doe
```

### Time/Space Complexity
O(n + m) time where n and m are string lengths, O(n + m) space

### Common Pitfall ⚠️
Concatenating many strings in a loop can be inefficient. Consider using stringstream.

### Quick Tip ✨
Use `+=` operator for appending to existing strings.

### Language-Specific Notes
C++ handles memory allocation automatically during concatenation.

---

## String Comparison

### Syntax
```cpp
bool equal = (str1 == str2);
int result = str1.compare(str2);
```

### Explanation
String comparison can use == operator or compare() method. Returns 0 if equal, negative if str1 < str2, positive if str1 > str2.

### Code Example
```cpp
#include <iostream>
#include <string>
using namespace std;

int main() {
    string str1 = "apple";
    string str2 = "banana";
    cout << "Equal: " << (str1 == str2) << endl;
    cout << "Compare result: " << str1.compare(str2) << endl;
    if (str1 < str2) cout << str1 << " comes before " << str2 << endl;
    return 0;
}
// Expected Output:
// Equal: 0
// Compare result: -1
// apple comes before banana
```

### Time/Space Complexity
O(min(n, m)) time where n and m are string lengths, O(1) space

### Common Pitfall ⚠️
Comparison is case-sensitive by default.

### Quick Tip ✨
Use `==` for equality checks and `<`, `>` for lexicographic comparison.

### Language-Specific Notes
C++ overloads comparison operators for intuitive string comparison.

---

## Substring Extraction

### Syntax
```cpp
string sub = str.substr(start, length);
```

### Explanation
Extract a portion of a string starting at a given position.

### Code Example
```cpp
#include <iostream>
#include <string>
using namespace std;

int main() {
    string text = "Hello World";
    string sub = text.substr(6, 5);  // Start at index 6, length 5
    cout << "Substring: " << sub << endl;
    return 0;
}
// Expected Output:
// Substring: World
```

### Time/Space Complexity
O(n) time where n is substring length, O(n) space

### Common Pitfall ⚠️
Accessing beyond string bounds throws out_of_range exception.

### Quick Tip ✨
Omit length parameter to extract from start to end of string.

### Language-Specific Notes
`substr()` creates a new string object.

---

## String Searching

### Syntax
```cpp
size_t pos = str.find(substring);
size_t pos = str.find(character);
```

### Explanation
Find the position of a substring or character. Returns string::npos if not found.

### Code Example
```cpp
#include <iostream>
#include <string>
using namespace std;

int main() {
    string text = "Hello World";
    size_t pos = text.find("World");
    if (pos != string::npos) {
        cout << "Found 'World' at position: " << pos << endl;
    }
    return 0;
}
// Expected Output:
// Found 'World' at position: 6
```

### Time/Space Complexity
O(n*m) time where n is string length and m is pattern length, O(1) space

### Common Pitfall ⚠️
Not checking for string::npos before using the returned position.

### Quick Tip ✨
Use `rfind()` to search from the end of the string.

### Language-Specific Notes
`find()` returns the index of first occurrence, or string::npos if not found.

---

## String Replacement

### Syntax
```cpp
str.replace(start, length, newStr);
```

### Explanation
Replace a portion of the string with another string.

### Code Example
```cpp
#include <iostream>
#include <string>
using namespace std;

int main() {
    string text = "Hello World";
    text.replace(6, 5, "C++");
    cout << "Modified: " << text << endl;
    return 0;
}
// Expected Output:
// Modified: Hello C++
```

### Time/Space Complexity
O(n) time where n is string length, O(1) space (modifies in place)

### Common Pitfall ⚠️
Replacement string can be different length than the portion being replaced.

### Quick Tip ✨
Use `find()` and `replace()` together to replace all occurrences.

### Language-Specific Notes
`replace()` modifies the original string.

---

## Case Conversion

### Syntax
```cpp
transform(str.begin(), str.end(), str.begin(), ::toupper);
transform(str.begin(), str.end(), str.begin(), ::tolower);
```

### Explanation
Convert string to uppercase or lowercase using transform algorithm.

### Code Example
```cpp
#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int main() {
    string str = "Hello World";
    transform(str.begin(), str.end(), str.begin(), ::toupper);
    cout << "Uppercase: " << str << endl;
    return 0;
}
// Expected Output:
// Uppercase: HELLO WORLD
```

### Time/Space Complexity
O(n) time where n is string length, O(1) space

### Common Pitfall ⚠️
Requires `<algorithm>` header for transform function.

### Quick Tip ✨
Use lambda functions for custom transformations.

### Language-Specific Notes
C++ doesn't have built-in string case conversion methods, use algorithms.

---

[Back to Top](#strings--string-operations-in-c) | [Back to C++ Index](/CPP/) | [Back to Main](/README.md)
