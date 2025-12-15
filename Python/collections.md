# Collections in Python

[Back to Python Index](/Python/) | [Back to Main](/README.md)

---

## List (Dynamic Array)

### Code Example
```python
numbers = [10, 20, 30]
numbers.append(40)  # Add element

for num in numbers:
    print(num, end=" ")
print()

# Expected Output:
# 10 20 30 40
```

## Set (Unique Elements)

### Code Example
```python
unique_numbers = {10, 20, 10, 30}
unique_numbers.add(40)

for num in unique_numbers:
    print(num, end=" ")
print()

# Expected Output:
# 10 20 30 40
```

## Dictionary (Key-Value Pairs)

### Code Example
```python
ages = {"Alice": 25, "Bob": 30}
ages["Charlie"] = 35

for name, age in ages.items():
    print(f"{name}: {age}")

# Expected Output:
# Alice: 25
# Bob: 30
# Charlie: 35
```

### Common Pitfall ⚠️
Dictionaries maintain insertion order in Python 3.7+, but this wasn't guaranteed in earlier versions.

### Quick Tip ✨
Use list comprehensions for efficient list creation: `[x*2 for x in range(5)]`

### Language-Specific Notes
Python has built-in list, set, dict, and tuple types with rich functionality.

---

[Back to Top](#collections-in-python) | [Back to Python Index](/Python/) | [Back to Main](/README.md)
