# File I/O & Input/Output in C

[Back to C Index](/C/) | [Back to Main](/README.md)

---

## Console Input/Output

### Code Example
```c
#include <stdio.h>

int main() {
    char name[50];
    int age;
    
    printf("Enter your name: ");
    scanf("%s", name);
    printf("Enter your age: ");
    scanf("%d", &age);
    
    printf("Hello, %s! You are %d years old.\n", name, age);
    return 0;
}
```

## File Writing

### Code Example
```c
#include <stdio.h>

int main() {
    FILE *file = fopen("output.txt", "w");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    
    fprintf(file, "Hello, File!\n");
    fprintf(file, "Writing to file in C.\n");
    
    fclose(file);
    printf("File written successfully.\n");
    return 0;
}
```

## File Reading

### Code Example
```c
#include <stdio.h>

int main() {
    FILE *file = fopen("output.txt", "r");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }
    
    char line[100];
    while (fgets(line, sizeof(line), file)) {
        printf("%s", line);
    }
    
    fclose(file);
    return 0;
}
```

### Common Pitfall ⚠️
Always check if file pointer is NULL before using it. Always close files after use.

### Quick Tip ✨
Use "r" for reading, "w" for writing (overwrites), "a" for appending.

### Language-Specific Notes
C requires manual file handling with fopen/fclose. No automatic resource management.

---

[Back to Top](#file-io--inputoutput-in-c) | [Back to C Index](/C/) | [Back to Main](/README.md)
