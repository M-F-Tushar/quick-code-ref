# Pointers & Memory Management in Python

[Back to Python Index](/Python/) | [Back to Main](/README.md)

---

## References (No Pointers)

### Explanation
Python doesn't have pointers. All variables are references to objects with automatic garbage collection.

### Code Example
```python
# Reference assignment
list1 = [1, 2, 3]
list2 = list1  # Reference copy

list1.append(4)
print(f"list1: {list1}")
print(f"list2: {list2}")  # Both modified
print(f"Same object: {list1 is list2}")

# Expected Output:
# list1: [1, 2, 3, 4]
# list2: [1, 2, 3, 4]
# Same object: True
```

## Garbage Collection

### Explanation
Python uses reference counting and cyclic garbage collection for automatic memory management.

### Code Example
```python
import sys

obj = [1, 2, 3]
print(f"Reference count: {sys.getrefcount(obj) - 1}")  # -1 for getrefcount's own reference

obj2 = obj
print(f"Reference count after copy: {sys.getrefcount(obj) - 1}")

# Expected Output:
# Reference count: 1
# Reference count after copy: 2
```

### Common Pitfall ⚠️
Circular references can delay garbage collection. Use weak references when needed.

### Quick Tip ✨
Use `del` to remove references, but garbage collection is automatic.

### Language-Specific Notes
Python uses automatic reference counting and garbage collection.

---

[Back to Top](#pointers--memory-management-in-python) | [Back to Python Index](/Python/) | [Back to Main](/README.md)
