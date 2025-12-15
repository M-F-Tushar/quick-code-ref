# Functional Programming Features in Python

[Back to Python Index](/Python/) | [Back to Main](/README.md)

---

## Lambda Expressions

### Code Example
```python
# Lambda expression
square = lambda x: x * x

numbers = [1, 2, 3, 4, 5]
for num in numbers:
    print(square(num), end=" ")
print()

# Expected Output:
# 1 4 9 16 25
```

## Map, Filter, Reduce

### Code Example
```python
from functools import reduce

numbers = [1, 2, 3, 4, 5]

# Map: square each number
squared = list(map(lambda x: x * x, numbers))
print(f"Squared: {squared}")

# Filter: only even numbers
evens = list(filter(lambda x: x % 2 == 0, numbers))
print(f"Evens: {evens}")

# Reduce: sum all numbers
total = reduce(lambda a, b: a + b, numbers)
print(f"Sum: {total}")

# Expected Output:
# Squared: [1, 4, 9, 16, 25]
# Evens: [2, 4]
# Sum: 15
```

## List Comprehensions

### Code Example
```python
numbers = [1, 2, 3, 4, 5]

# List comprehension (Pythonic way)
squared = [x * x for x in numbers]
print(f"Squared: {squared}")

evens = [x for x in numbers if x % 2 == 0]
print(f"Evens: {evens}")

# Expected Output:
# Squared: [1, 4, 9, 16, 25]
# Evens: [2, 4]
```

### Common Pitfall ⚠️
List comprehensions are often more Pythonic than map/filter.

### Quick Tip ✨
Use list comprehensions for readability, map/filter for functional style.

### Language-Specific Notes
Python has strong functional programming support with lambdas, map, filter, reduce.

---

[Back to Top](#functional-programming-features-in-python) | [Back to Python Index](/Python/) | [Back to Main](/README.md)
