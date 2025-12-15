# Arrays (Lists) in Python

[Back to Python Index](/Python/) | [Back to Main](/README.md)

---

## List Declaration and Initialization

### Syntax
```python
list_name = []                    # Empty list
list_name = [values]              # List with values
list_name = list(iterable)        # From iterable
```

### Explanation
Python uses lists, which are dynamic arrays that can hold elements of different types. Lists are mutable and resizable.

### Code Example
```python
# List initialization
numbers = [10, 20, 30, 40, 50]
print("List created with 5 elements")

# Expected Output:
# List created with 5 elements
```

### Time/Space Complexity
O(n) time for initialization, O(n) space where n is list size

### Common Pitfall ⚠️
Lists can contain mixed types, which can lead to type errors if not handled carefully.

### Quick Tip ✨
Use list comprehensions for creating lists: `[x*2 for x in range(5)]` generates [0, 2, 4, 6, 8].

### Language-Specific Notes
Python lists are implemented as dynamic arrays (like C++ vector or Java ArrayList), not linked lists.

---

## Accessing List Elements

### Syntax
```python
list_name[index]          # Positive index from start
list_name[-index]         # Negative index from end
```

### Explanation
Lists use zero-based indexing. Python also supports negative indexing: -1 is last element, -2 is second-to-last.

### Code Example
```python
# Accessing list elements
numbers = [10, 20, 30, 40, 50]
print(f"First element: {numbers[0]}")    # Access first
print(f"Third element: {numbers[2]}")    # Access third

# Expected Output:
# First element: 10
# Third element: 30
```

### Time/Space Complexity
O(1) time for element access, O(1) space

### Common Pitfall ⚠️
Accessing out-of-bounds indices raises IndexError. Always validate indices are valid.

### Quick Tip ✨
Use negative indexing to access from the end: `numbers[-1]` gets the last element.

### Language-Specific Notes
Python's negative indexing is unique and very convenient: `list[-1]` is equivalent to `list[len(list)-1]`.

---

## List Length

### Syntax
```python
len(list_name)
```

### Explanation
The built-in len() function returns the number of elements in a list.

### Code Example
```python
# Get list length
numbers = [10, 20, 30, 40, 50]
size = len(numbers)              # Get list length
print(f"List length: {size}")

# Expected Output:
# List length: 5
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
len() is a function, not a method. Use `len(list)`, not `list.length` or `list.length()`.

### Quick Tip ✨
Lists cache their length, so len() is always O(1) - no counting needed.

### Language-Specific Notes
Python uses len() as a universal function for all sequences and collections, not a method.

---

## Iterating Through Lists

### Syntax
```python
for element in list_name:         # Direct iteration
for i in range(len(list_name)):   # Index-based iteration
for i, element in enumerate(list_name):  # With index
```

### Explanation
Python's for loops naturally iterate over list elements. Use range(len()) for index access or enumerate() for both.

### Code Example
```python
# Iterate through list
numbers = [10, 20, 30, 40, 50]
print("Elements: ", end="")
for num in numbers:              # Direct iteration
    print(num, end=" ")
print()

# Expected Output:
# Elements: 10 20 30 40 50
```

### Time/Space Complexity
O(n) time where n is list length, O(1) space

### Common Pitfall ⚠️
Modifying a list while iterating over it can cause unexpected behavior or skip elements.

### Quick Tip ✨
Use enumerate() when you need both index and value: `for i, num in enumerate(numbers):`.

### Language-Specific Notes
Python's iteration is more Pythonic than index-based. Use direct iteration when you don't need indices.

---

## Finding Sum of List Elements

### Syntax
```python
sum(list_name)
```

### Explanation
Python's built-in sum() function calculates the sum of all numeric elements in an iterable.

### Code Example
```python
# Sum calculation
numbers = [10, 20, 30, 40, 50]   # List with known values
total = sum(numbers)             # Sum all elements
print(f"Sum: {total}")

# Expected Output:
# Sum: 150
```

### Time/Space Complexity
O(n) time where n is list length, O(1) space

### Common Pitfall ⚠️
sum() only works with numeric types. For strings, use ''.join(list) instead.

### Quick Tip ✨
sum() accepts optional start value: `sum(numbers, 100)` adds 100 to the result.

### Language-Specific Notes
Python's sum() is highly optimized in C. It's faster than manual accumulation in a loop.

---

## List Methods

### Syntax
```python
list.append(element)      # Add to end
list.insert(index, elem)  # Insert at position
list.remove(element)      # Remove first occurrence
list.pop(index)           # Remove and return element
```

### Explanation
Lists have many built-in methods for adding, removing, and manipulating elements dynamically.

### Code Example
```python
# List methods
numbers = [10, 20, 30, 40, 50]
numbers.append(60)               # Add to end
print(f"After append: {numbers}")
numbers.pop()                    # Remove last
print(f"After pop: {numbers}")

# Expected Output:
# After append: [10, 20, 30, 40, 50, 60]
# After pop: [10, 20, 30, 40, 50]
```

### Time/Space Complexity
append/pop at end: O(1). insert/remove in middle: O(n)

### Common Pitfall ⚠️
pop() without arguments removes last element. pop(0) removes first but is O(n). Use collections.deque for efficient front removal.

### Quick Tip ✨
Use extend() to add multiple elements: `list.extend([1, 2, 3])` is faster than multiple appends.

### Language-Specific Notes
List methods modify in-place and return None (except pop). Don't write `list = list.append(x)`.

---

## List Slicing

### Syntax
```python
list[start:end]           # Elements from start to end-1
list[start:end:step]      # With step size
list[::-1]                # Reverse list
```

### Explanation
Slicing creates a new list with a subset of elements. Powerful feature for list manipulation.

### Code Example
```python
# List slicing
numbers = [10, 20, 30, 40, 50]
print(f"First 3: {numbers[:3]}")     # First 3 elements
print(f"Last 2: {numbers[-2:]}")     # Last 2 elements
print(f"Reversed: {numbers[::-1]}")  # Reverse list

# Expected Output:
# First 3: [10, 20, 30]
# Last 2: [40, 50]
# Reversed: [50, 40, 30, 20, 10]
```

### Time/Space Complexity
O(k) time and space where k is the slice size

### Common Pitfall ⚠️
Slicing creates a shallow copy. Nested lists are referenced, not copied.

### Quick Tip ✨
Use slicing for copying: `new_list = old_list[:]` creates a shallow copy.

### Language-Specific Notes
Python slicing syntax is very flexible. End index is exclusive, unlike most other languages.

---

## List Comprehensions

### Syntax
```python
[expression for item in iterable if condition]
```

### Explanation
List comprehensions provide concise syntax for creating lists based on existing iterables with optional filtering.

### Code Example
```python
# List comprehension
numbers = [10, 20, 30, 40, 50]
doubled = [x * 2 for x in numbers]   # Double each element
print(f"Doubled: {doubled}")
evens = [x for x in numbers if x % 20 == 0]  # Filter evens
print(f"Divisible by 20: {evens}")

# Expected Output:
# Doubled: [20, 40, 60, 80, 100]
# Divisible by 20: [20, 40]
```

### Time/Space Complexity
O(n) time and space where n is size of resulting list

### Common Pitfall ⚠️
Complex list comprehensions reduce readability. Use regular loops for complex logic.

### Quick Tip ✨
List comprehensions are faster than equivalent for loops because they're optimized in the interpreter.

### Language-Specific Notes
Python's list comprehensions are inspired by mathematical set notation and are highly Pythonic.

---

[Back to Top](#arrays-lists-in-python) | [Back to Python Index](/Python/) | [Back to Main](/README.md)
