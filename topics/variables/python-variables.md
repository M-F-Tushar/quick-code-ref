# Variables & Data Types in Python

[Back to Python Index](/Python/) | [Back to Main](/README.md)

---

## Integer Declaration and Initialization

### Syntax
```python
variable_name = value
```

### Explanation
Python uses dynamic typing - no explicit type declaration needed. The interpreter infers types automatically from the assigned value.

### Code Example
```python
# Integer variables with dynamic typing
user_age = 25                  # Python infers this is an int
max_score = 100                # Another integer
print(f"Age: {user_age}")      # Print using f-string
print(f"Max Score: {max_score}")

# Expected Output: 
# Age: 25
# Max Score: 100
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Variable names are case-sensitive. `userAge` and `userage` are different variables.

### Quick Tip ✨
Use snake_case naming convention (user_age) for variables in Python, as per PEP 8 style guide.

### Language-Specific Notes
Python integers have arbitrary precision - they can be as large as memory allows, unlike fixed-size ints in other languages.

---

## String Declaration and Initialization

### Syntax
```python
variable_name = "text"
variable_name = 'text'
variable_name = """multi-line text"""
```

### Explanation
Python strings are immutable sequences of Unicode characters. Single, double, or triple quotes can be used for string creation.

### Code Example
```python
# String variables
user_name = "Alice"            # String with double quotes
print(f"Name: {user_name}")    # Print string using f-string
print(f"Length: {len(user_name)}")  # Get string length

# Expected Output:
# Name: Alice
# Length: 5
```

### Time/Space Complexity
O(1) time for declaration, O(n) time for string operations where n is string length

### Common Pitfall ⚠️
Strings are immutable. Operations like concatenation create new string objects, not modify existing ones.

### Quick Tip ✨
Use f-strings (f"text {variable}") for cleaner string formatting in Python 3.6+.

### Language-Specific Notes
Python supports string slicing, multiple quote styles, and automatic Unicode support unlike many other languages.

---

## Boolean Values

### Syntax
```python
variable_name = True/False
```

### Explanation
Python has a bool type with two values: True and False (capitalized). Many values have implicit boolean conversion.

### Code Example
```python
# Boolean variables (note capitalization)
is_active = True               # Boolean variable
is_complete = False            # Another boolean
print(f"Active: {is_active}")       # Prints True
print(f"Complete: {is_complete}")   # Prints False

# Expected Output:
# Active: True
# Complete: False
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
True and False must be capitalized in Python. Using lowercase true/false causes NameError.

### Quick Tip ✨
Empty containers ([], {}, "", etc.) are "falsy" and evaluate to False in boolean context.

### Language-Specific Notes
Python's truthiness: 0, None, empty sequences/collections evaluate to False; everything else is True.

---

## Type Conversion and Casting

### Syntax
```python
target_type(expression)
```

### Explanation
Python uses constructor functions for type conversion: int(), float(), str(), bool(). These are explicit conversions.

### Code Example
```python
# Type conversion example
total_score = 85
max_score = 100
percentage = float(total_score) / max_score * 100  # Convert to float
print(f"Score: {total_score}/{max_score}")
print(f"Percentage: {percentage:.2f}%")

# Expected Output:
# Score: 85/100
# Percentage: 85.00%
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
In Python 3, division always returns float. Use // for integer division if you need whole numbers.

### Quick Tip ✨
Python 3 performs float division by default with `/`. Use `//` for integer division.

### Language-Specific Notes
Python 3 automatically promotes to float in division, unlike Python 2 which performed integer division by default.

---

## Constants

### Syntax
```python
CONSTANT_NAME = value  # Convention: use UPPERCASE
```

### Explanation
Python doesn't have built-in constant support. By convention, UPPERCASE variable names indicate that a value shouldn't be changed.

### Code Example
```python
# Constants (convention only - not enforced)
MAX_ATTEMPTS = 3               # Constant by convention
PI = 3.14159                   # Another constant
GRAVITY = 9.81                 # Yet another constant
print(f"Max Attempts: {MAX_ATTEMPTS}")
print(f"PI: {PI:.5f}")
print(f"Gravity: {GRAVITY:.2f} m/s²")

# Expected Output:
# Max Attempts: 3
# PI: 3.14159
# Gravity: 9.81 m/s²
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
UPPERCASE naming is only a convention. Python doesn't prevent reassignment of "constant" variables.

### Quick Tip ✨
Use UPPERCASE names for constants and trust team members to respect the convention.

### Language-Specific Notes
For true immutability, consider using tuples or the `typing.Final` type hint (Python 3.8+) with type checkers.

---

[Back to Top](#variables--data-types-in-python) | [Back to Python Index](/Python/) | [Back to Main](/README.md)
