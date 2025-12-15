# Control Flow (If/Else) in Python

[Back to Python Index](/Python/) | [Back to Main](/README.md)

---

## Basic If Statement

### Syntax
```python
if condition:
    # code to execute if condition is true
```

### Explanation
The if statement executes an indented block of code only when the specified condition evaluates to True.

### Code Example
```python
# Basic if statement
score = 85
if score >= 80:                  # Check if score is 80 or above
    print("Great job!")

# Expected Output:
# Great job!
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Forgetting the colon (:) at the end of the if statement causes a syntax error.

### Quick Tip ✨
Python uses indentation (typically 4 spaces) to define code blocks instead of braces.

### Language-Specific Notes
Python requires consistent indentation. Mix of tabs and spaces causes IndentationError. Use 4 spaces per PEP 8.

---

## If-Else Statement

### Syntax
```python
if condition:
    # code if true
else:
    # code if false
```

### Explanation
The if-else statement provides an alternative execution path when the condition is False.

### Code Example
```python
# If-else statement
score = 85
if score >= 90:                  # Check for excellent score
    print("Grade: A")
else:
    print("Grade: B or below")

# Expected Output:
# Grade: B or below
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Incorrect indentation of the else clause or its body causes IndentationError.

### Quick Tip ✨
Keep else at the same indentation level as its corresponding if statement.

### Language-Specific Notes
Python's significant whitespace makes the code structure visually clear without needing braces.

---

## If-Elif-Else Chain

### Syntax
```python
if condition1:
    # code for condition1
elif condition2:
    # code for condition2
else:
    # code if all conditions false
```

### Explanation
Multiple conditions can be checked in sequence using elif. The first true condition executes its block, then the chain exits.

### Code Example
```python
# If-elif-else chain
score = 85                       # Test with 85
if score >= 90:                  # Check for A grade
    print("Grade: A")
elif score >= 80:                # Check for B grade
    print("Grade: B")
elif score >= 70:                # Check for C grade
    print("Grade: C")
else:
    print("Grade: F")

# Expected Output:
# Grade: B
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Order matters! Place more specific conditions before general ones to avoid unreachable code.

### Quick Tip ✨
Use elif (not "else if") - it's Python's keyword for chained conditionals.

### Language-Specific Notes
Python's elif is more concise than "else if" and maintains consistent indentation levels.

---

## Nested If Statements

### Syntax
```python
if condition1:
    if condition2:
        # code when both true
```

### Explanation
If statements can be nested inside other if statements to check multiple related conditions.

### Code Example
```python
# Nested if statements
score = 85
attendance = 95
if score >= 80:                  # First check score
    if attendance >= 90:         # Then check attendance
        print("Excellent performance!")

# Expected Output:
# Excellent performance!
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Deep nesting with Python's indentation can make code hard to read. Consider using logical operators instead.

### Quick Tip ✨
Use logical operators (and, or) instead of nesting: `if score >= 80 and attendance >= 90:` is clearer.

### Language-Specific Notes
Python's readable syntax with 'and', 'or', 'not' operators makes complex conditions more English-like.

---

## Ternary Operator

### Syntax
```python
result = value_if_true if condition else value_if_false
```

### Explanation
Python's conditional expression provides a concise way to assign values based on a condition in a single line.

### Code Example
```python
# Ternary/conditional expression
score = 85
result = "Pass" if score >= 80 else "Fail"  # Compact if-else
print(f"Result: {result}")

# Expected Output:
# Result: Pass
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Python's ternary syntax is different from C-style: condition goes in the middle, not at the start.

### Quick Tip ✨
Read Python's ternary as English: "value_if_true IF condition ELSE value_if_false".

### Language-Specific Notes
Python's conditional expression is more readable than C-style ternary but should still be used sparingly.

---

[Back to Top](#control-flow-ifelse-in-python) | [Back to Python Index](/Python/) | [Back to Main](/README.md)
