# File I/O & Input/Output in C++

[Back to C++ Index](/CPP/) | [Back to Main](/README.md)

---

## Console Input/Output

### Code Example
```cpp
#include <iostream>
#include <string>
using namespace std;

int main() {
    string name;
    int age;
    
    cout << "Enter your name: ";
    cin >> name;
    cout << "Enter your age: ";
    cin >> age;
    
    cout << "Hello, " << name << "! You are " << age << " years old." << endl;
    return 0;
}
```

## File Writing

### Code Example
```cpp
#include <iostream>
#include <fstream>
using namespace std;

int main() {
    ofstream file("output.txt");
    if (!file) {
        cout << "Error opening file!" << endl;
        return 1;
    }
    
    file << "Hello, File!" << endl;
    file << "Writing to file in C++." << endl;
    
    file.close();
    cout << "File written successfully." << endl;
    return 0;
}
```

## File Reading

### Code Example
```cpp
#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main() {
    ifstream file("output.txt");
    if (!file) {
        cout << "Error opening file!" << endl;
        return 1;
    }
    
    string line;
    while (getline(file, line)) {
        cout << line << endl;
    }
    
    file.close();
    return 0;
}
```

### Common Pitfall ⚠️
File streams close automatically when going out of scope, but explicit close is good practice.

### Quick Tip ✨
Use ifstream for input, ofstream for output, fstream for both.

### Language-Specific Notes
C++ uses stream-based I/O with automatic resource management.

---

[Back to Top](#file-io--inputoutput-in-c) | [Back to C++ Index](/CPP/) | [Back to Main](/README.md)
