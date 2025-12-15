# Loops (For Loops) in Python

[Back to Python Index](/Python/) | [Back to Main](/README.md)

---

## Basic For Loop

### Syntax
```python
for variable in iterable:
    # code to repeat
```

### Explanation
Python's for loop iterates over any iterable object (lists, ranges, strings, etc.). The range() function creates number sequences.

### Code Example
```python
# Basic for loop using range
for i in range(1, 6):            # Loop from 1 to 5 (6 is exclusive)
    print(i, end=" ")
print()

# Expected Output:
# 1 2 3 4 5
```

### Time/Space Complexity
O(n) time where n is the number of iterations, O(1) space

### Common Pitfall ⚠️
range(5) starts at 0, not 1. range(1, 6) goes from 1 to 5 (upper bound is exclusive).

### Quick Tip ✨
Use range(start, stop, step) for custom increments: range(0, 10, 2) gives [0, 2, 4, 6, 8].

### Language-Specific Notes
Python's for loop is more like a "for-each" loop in other languages - it iterates over items, not indices.

---

## Loop with Array/List Iteration

### Syntax
```python
for element in list:
    # use element
# Or with index:
for i in range(len(list)):
    # use list[i]
```

### Explanation
Python for loops naturally iterate over list elements. Use range(len()) when you need the index.

### Code Example
```python
# Iterate through list
numbers = [10, 20, 30, 40, 50]
for num in numbers:              # Direct iteration over elements
    print(num, end=" ")
print()

# Expected Output:
# 10 20 30 40 50
```

### Time/Space Complexity
O(n) time where n is list length, O(1) space

### Common Pitfall ⚠️
Modifying a list while iterating over it can cause unexpected behavior or skip elements.

### Quick Tip ✨
Use enumerate() to get both index and value: `for i, num in enumerate(numbers):`.

### Language-Specific Notes
Python lists are dynamic arrays. Iterating directly over elements is more Pythonic than using indices.

---

## Nested Loops

### Syntax
```python
for var1 in iterable1:
    for var2 in iterable2:
        # code in inner loop
```

### Explanation
Nested loops place one loop inside another. The inner loop completes all iterations for each iteration of the outer loop.

### Code Example
```python
# 2x2 multiplication table
for i in range(1, 3):            # Outer loop (1, 2)
    for j in range(1, 3):        # Inner loop (1, 2)
        print(i * j, end=" ")
    print()                      # New line after inner loop

# Expected Output:
# 1 2
# 2 4
```

### Time/Space Complexity
O(n * m) time for nested loops with n and m iterations, O(1) space

### Common Pitfall ⚠️
Deep nesting with Python's indentation can make code hard to read beyond 2-3 levels.

### Quick Tip ✨
Use list comprehensions for simple nested loops: `[[i*j for j in range(1,3)] for i in range(1,3)]`.

### Language-Specific Notes
Python's significant whitespace makes nested loop structure visually clear but can become unwieldy when deeply nested.

---

## Break Statement

### Syntax
```python
for variable in iterable:
    if condition:
        break  # exit loop immediately
```

### Explanation
The break statement immediately exits the innermost enclosing loop, skipping remaining iterations.

### Code Example
```python
# Break example
for i in range(1, 11):
    if i == 6:
        break                    # Exit loop when i is 6
    print(i, end=" ")
print()

# Expected Output:
# 1 2 3 4 5
```

### Time/Space Complexity
O(n) time in worst case, can be O(1) to O(n) depending on break condition, O(1) space

### Common Pitfall ⚠️
In nested loops, break only exits the innermost loop, not all loops.

### Quick Tip ✨
Python loops support else clause: executes if loop completes without break.

### Language-Specific Notes
Python's for-else: the else block runs only if the loop wasn't terminated by break (useful for search operations).

---

## Continue Statement

### Syntax
```python
for variable in iterable:
    if condition:
        continue  # skip to next iteration
```

### Explanation
The continue statement skips the rest of the current iteration and moves to the next iteration of the loop.

### Code Example
```python
# Continue example
for i in range(1, 6):
    if i == 3:
        continue                 # Skip when i is 3
    print(i, end=" ")
print()

# Expected Output:
# 1 2 4 5
```

### Time/Space Complexity
O(n) time where n is the number of iterations, O(1) space

### Common Pitfall ⚠️
Overusing continue can make loop logic confusing. Consider filtering with if statements instead.

### Quick Tip ✨
Use list comprehensions with if conditions instead of continue for cleaner code: `[i for i in range(1,6) if i != 3]`.

### Language-Specific Notes
Continue works with for and while loops. In for loops, it moves to the next element in the iterable.

---

## Sum Calculation Example

### Syntax
```python
sum = 0
for variable in iterable:
    sum += variable
```

### Explanation
A common loop pattern accumulates values by adding each element to a running total.

### Code Example
```python
# Sum calculation
sum_total = 0
for i in range(1, 6):            # Sum numbers 1 to 5
    sum_total += i
print(f"Sum: {sum_total}")

# Expected Output:
# Sum: 15
```

### Time/Space Complexity
O(n) time where n is the number of iterations, O(1) space

### Common Pitfall ⚠️
Don't name your variable 'sum' as it shadows the built-in sum() function.

### Quick Tip ✨
Use Python's built-in sum() function: `sum(range(1, 6))` is more concise and Pythonic.

### Language-Specific Notes
Python provides built-in functions like sum(), min(), max() that work with iterables, avoiding manual loops.

---

[Back to Top](#loops-for-loops-in-python) | [Back to Python Index](/Python/) | [Back to Main](/README.md)
