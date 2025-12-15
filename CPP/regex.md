# Regular Expressions in C++

[Back to C++ Index](/CPP/) | [Back to Main](/README.md)

---

## Regex Library (C++11+)

### Code Example
```cpp
#include <iostream>
#include <regex>
#include <string>
using namespace std;

int main() {
    string text = "My email is test@example.com";
    regex pattern(R"(\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b)");
    
    if (regex_search(text, pattern)) {
        cout << "Email found in text" << endl;
    }
    
    // Extract match
    smatch match;
    if (regex_search(text, match, pattern)) {
        cout << "Email: " << match.str() << endl;
    }
    
    return 0;
}
// Expected Output:
// Email found in text
// Email: test@example.com
```

## Pattern Replacement

### Code Example
```cpp
#include <iostream>
#include <regex>
#include <string>
using namespace std;

int main() {
    string text = "Phone: 123-456-7890";
    regex pattern(R"(\d{3}-\d{3}-\d{4})");
    string result = regex_replace(text, pattern, "XXX-XXX-XXXX");
    cout << result << endl;
    return 0;
}
// Expected Output:
// Phone: XXX-XXX-XXXX
```

### Common Pitfall ⚠️
Regex compilation can be slow. Compile once and reuse when possible.

### Quick Tip ✨
Use raw string literals R"(...)" for regex patterns to avoid escaping backslashes.

### Language-Specific Notes
C++11+ provides comprehensive regex support in <regex> header.

---

[Back to Top](#regular-expressions-in-c) | [Back to C++ Index](/CPP/) | [Back to Main](/README.md)
