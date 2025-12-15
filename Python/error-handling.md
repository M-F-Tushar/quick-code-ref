# Error Handling & Exceptions in Python

[Back to Python Index](/Python/) | [Back to Main](/README.md)

---

## Try-Except Blocks

### Code Example
```python
def divide(a, b):
    if b == 0:
        raise ValueError("Division by zero")
    return a / b

try:
    result = divide(10, 0)
    print(f"Result: {result}")
except ValueError as e:
    print(f"Error: {e}")
finally:
    print("Cleanup code here")

# Expected Output:
# Error: Division by zero
# Cleanup code here
```

### Common Pitfall ⚠️
Catching bare `except:` hides all errors including system exits. Be specific.

### Quick Tip ✨
Use `except Exception as e:` to catch most errors while preserving system exits.

### Language-Specific Notes
Python uses try-except-finally blocks. Use `raise` to throw exceptions.

---

[Back to Top](#error-handling--exceptions-in-python) | [Back to Python Index](/Python/) | [Back to Main](/README.md)
