# Strings & String Operations in Python

[Back to Python Index](/Python/) | [Back to Main](/README.md)

---

For complete string operations in Python including concatenation, comparison, slicing, searching, replacement, formatting, and case conversion.

## String Declaration

### Syntax
```python
str = "text"
str = 'text'
str = """multiline text"""
```

### Code Example
```python
greeting = "Hello"
name = "Alice"
print(f"Greeting: {greeting}")
print(f"Name: {name}")
print(f"Length: {len(name)}")

# Expected Output:
# Greeting: Hello
# Name: Alice
# Length: 5
```

## String Concatenation

### Code Example
```python
first_name = "John"
last_name = " Doe"
full_name = first_name + last_name
print(f"Full name: {full_name}")

# Expected Output:
# Full name: John Doe
```

## String Comparison

### Code Example
```python
str1 = "apple"
str2 = "banana"
print(f"Equal: {str1 == str2}")
print(f"{str1} < {str2}: {str1 < str2}")
if str1 < str2:
    print(f"{str1} comes before {str2}")

# Expected Output:
# Equal: False
# apple < banana: True
# apple comes before banana
```

## String Slicing and Searching

### Code Example
```python
text = "Hello World"
sub = text[6:11]  # Slice from index 6 to 11
print(f"Substring: {sub}")

pos = text.find("World")
print(f"Found 'World' at position: {pos}")

# Expected Output:
# Substring: World
# Found 'World' at position: 6
```

## String Replacement and Case Conversion

### Code Example
```python
text = "Hello World"
replaced = text.replace("World", "Python")
print(f"Replaced: {replaced}")

print(f"Uppercase: {text.upper()}")
print(f"Lowercase: {text.lower()}")

# Expected Output:
# Replaced: Hello Python
# Uppercase: HELLO WORLD
# Lowercase: hello world
```

## String Formatting

### Code Example
```python
name = "Alice"
age = 25
formatted = f"Name: {name}, Age: {age}"
print(formatted)

# Expected Output:
# Name: Alice, Age: 25
```

### Common Pitfall ⚠️
Strings in Python are immutable. All string methods return new strings.

### Quick Tip ✨
Use f-strings (Python 3.6+) for clean and efficient string formatting.

### Language-Specific Notes
Python has powerful string methods and supports both single and double quotes.

---

[Back to Top](#strings--string-operations-in-python) | [Back to Python Index](/Python/) | [Back to Main](/README.md)
