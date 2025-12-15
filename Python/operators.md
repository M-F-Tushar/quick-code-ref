# Operators & Expressions in Python

[Back to Python Index](/Python/) | [Back to Main](/README.md)

---

## Arithmetic Operators

### Syntax
```python
result = operand1 + operand2   # Addition
result = operand1 - operand2   # Subtraction
result = operand1 * operand2   # Multiplication
result = operand1 / operand2   # Division (float)
result = operand1 // operand2  # Floor division (integer)
result = operand1 % operand2   # Modulus (remainder)
result = operand1 ** operand2  # Exponentiation
```

### Explanation
Arithmetic operators perform mathematical calculations on numeric values. Python has both regular division (/) and floor division (//).

### Code Example
```python
a = 15
b = 4

print(f"Addition: {a} + {b} = {a + b}")
print(f"Subtraction: {a} - {b} = {a - b}")
print(f"Multiplication: {a} * {b} = {a * b}")
print(f"Division: {a} / {b} = {a / b}")
print(f"Floor Division: {a} // {b} = {a // b}")
print(f"Modulus: {a} % {b} = {a % b}")
print(f"Exponentiation: {a} ** 2 = {a ** 2}")

# Expected Output:
# Addition: 15 + 4 = 19
# Subtraction: 15 - 4 = 11
# Multiplication: 15 * 4 = 60
# Division: 15 / 4 = 3.75
# Floor Division: 15 // 4 = 3
# Modulus: 15 % 4 = 3
# Exponentiation: 15 ** 2 = 225
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
In Python 3, `/` always returns a float. Use `//` for integer division.

### Quick Tip ✨
Python has a built-in `**` operator for exponentiation, unlike C/C++/Java.

### Language-Specific Notes
Python automatically handles arbitrary precision integers, preventing overflow for large numbers.

---

## Comparison Operators

### Syntax
```python
result = (a == b)  # Equal to
result = (a != b)  # Not equal to
result = (a < b)   # Less than
result = (a > b)   # Greater than
result = (a <= b)  # Less than or equal to
result = (a >= b)  # Greater than or equal to
```

### Explanation
Comparison operators compare two values and return True or False.

### Code Example
```python
x = 10
y = 20

print(f"{x} == {y}: {x == y}")
print(f"{x} != {y}: {x != y}")
print(f"{x} < {y}: {x < y}")
print(f"{x} > {y}: {x > y}")

# Expected Output:
# 10 == 20: False
# 10 != 20: True
# 10 < 20: True
# 10 > 20: False
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Python allows chained comparisons like `a < b < c`, which can be confusing if not understood properly.

### Quick Tip ✨
Use `is` for identity comparison (same object) and `==` for equality comparison (same value).

### Language-Specific Notes
Python returns boolean values True or False (capitalized), not 0 or 1.

---

## Logical Operators

### Syntax
```python
result = (condition1 and condition2)  # Logical AND
result = (condition1 or condition2)   # Logical OR
result = not condition                 # Logical NOT
```

### Explanation
Logical operators combine or invert boolean expressions. They use short-circuit evaluation.

### Code Example
```python
is_adult = True
has_license = False

print(f"Can drive: {is_adult and has_license}")
print(f"Eligible: {is_adult or has_license}")
print(f"Not adult: {not is_adult}")

# Expected Output:
# Can drive: False
# Eligible: True
# Not adult: False
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Python uses `and`, `or`, `not` keywords instead of `&&`, `||`, `!` symbols.

### Quick Tip ✨
Logical operators return the actual value that determined the result, not just True/False.

### Language-Specific Notes
Python uses short-circuit evaluation: `and` stops if first operand is False, `or` stops if first operand is True.

---

## Bitwise Operators

### Syntax
```python
result = a & b   # Bitwise AND
result = a | b   # Bitwise OR
result = a ^ b   # Bitwise XOR
result = ~a      # Bitwise NOT
result = a << n  # Left shift
result = a >> n  # Right shift
```

### Explanation
Bitwise operators perform operations on individual bits of integer values.

### Code Example
```python
a = 12  # 1100 in binary
b = 10  # 1010 in binary

print(f"AND: {a} & {b} = {a & b}")      # 1000 = 8
print(f"OR: {a} | {b} = {a | b}")       # 1110 = 14
print(f"XOR: {a} ^ {b} = {a ^ b}")      # 0110 = 6
print(f"Left shift: {a} << 1 = {a << 1}")  # 11000 = 24

# Expected Output:
# AND: 12 & 10 = 8
# OR: 12 | 10 = 14
# XOR: 12 ^ 10 = 6
# Left shift: 12 << 1 = 24
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Bitwise NOT (~) in Python returns negative numbers due to two's complement representation.

### Quick Tip ✨
Left shift by n is equivalent to multiplying by 2^n, right shift by n divides by 2^n (for positive numbers).

### Language-Specific Notes
Python integers have unlimited precision, so bitwise operations work on arbitrarily large numbers.

---

## Assignment Operators

### Syntax
```python
a = value       # Simple assignment
a += value      # Add and assign (a = a + value)
a -= value      # Subtract and assign
a *= value      # Multiply and assign
a /= value      # Divide and assign
a //= value     # Floor divide and assign
a %= value      # Modulus and assign
a **= value     # Exponentiation and assign
```

### Explanation
Assignment operators assign values to variables. Compound assignment operators combine an operation with assignment.

### Code Example
```python
score = 100
print(f"Initial score: {score}")

score += 50  # Add 50
print(f"After bonus: {score}")

score -= 30  # Subtract 30
print(f"After penalty: {score}")

score *= 2   # Double it
print(f"Final score: {score}")

# Expected Output:
# Initial score: 100
# After bonus: 150
# After penalty: 120
# Final score: 240
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Forgetting that compound assignments modify the original variable can lead to logic errors.

### Quick Tip ✨
Compound assignment operators are more concise and can be more efficient than separate operations.

### Language-Specific Notes
Python supports walrus operator `:=` (Python 3.8+) for assignment within expressions.

---

## Ternary Operator

### Syntax
```python
result = value_if_true if condition else value_if_false
```

### Explanation
The ternary operator is a compact way to write simple if-else statements. It evaluates a condition and returns one of two values.

### Code Example
```python
age = 18
status = "Adult" if age >= 18 else "Minor"
print(f"Age: {age}, Status: {status}")

a = 10
b = 20
max_value = a if a > b else b
print(f"Maximum of {a} and {b} is: {max_value}")

# Expected Output:
# Age: 18, Status: Adult
# Maximum of 10 and 20 is: 20
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Overusing ternary operators for complex conditions reduces code readability. Use if-else for clarity.

### Quick Tip ✨
Use ternary operators for simple value assignments based on a single condition.

### Language-Specific Notes
Python's ternary syntax is `value_if_true if condition else value_if_false`, different from C-style languages.

---

## Identity and Membership Operators

### Syntax
```python
result = (a is b)        # Identity - same object
result = (a is not b)    # Not same object
result = (item in collection)      # Membership - item exists
result = (item not in collection)  # Item doesn't exist
```

### Explanation
Identity operators check if two variables reference the same object. Membership operators check if a value exists in a sequence.

### Code Example
```python
# Identity operators
x = [1, 2, 3]
y = x
z = [1, 2, 3]
print(f"x is y: {x is y}")      # Same object
print(f"x is z: {x is z}")      # Different objects, same content

# Membership operators
numbers = [1, 2, 3, 4, 5]
print(f"3 in numbers: {3 in numbers}")
print(f"10 in numbers: {10 in numbers}")

# Expected Output:
# x is y: True
# x is z: False
# 3 in numbers: True
# 10 in numbers: False
```

### Time/Space Complexity
O(1) time for identity, O(n) time for membership in lists

### Common Pitfall ⚠️
Using `is` for value comparison instead of `==`. Use `is` only for identity checks (e.g., `is None`).

### Quick Tip ✨
Always use `is` when comparing to `None`, `True`, or `False`.

### Language-Specific Notes
These operators are unique to Python and very useful for working with collections and object references.

---

[Back to Top](#operators--expressions-in-python) | [Back to Python Index](/Python/) | [Back to Main](/README.md)
