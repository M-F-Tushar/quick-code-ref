# File I/O & Input/Output in Python

[Back to Python Index](/Python/) | [Back to Main](/README.md)

---

## Console Input/Output

### Code Example
```python
name = input("Enter your name: ")
age = int(input("Enter your age: "))

print(f"Hello, {name}! You are {age} years old.")
```

## File Writing

### Code Example
```python
with open("output.txt", "w") as file:
    file.write("Hello, File!\n")
    file.write("Writing to file in Python.\n")

print("File written successfully.")
```

## File Reading

### Code Example
```python
with open("output.txt", "r") as file:
    for line in file:
        print(line, end="")
```

### Common Pitfall ⚠️
Always use `with` statement for file operations to ensure proper closing.

### Quick Tip ✨
Use "r" for reading, "w" for writing, "a" for appending, "r+" for read/write.

### Language-Specific Notes
Python's `with` statement provides automatic resource management for files.

---

[Back to Top](#file-io--inputoutput-in-python) | [Back to Python Index](/Python/) | [Back to Main](/README.md)
