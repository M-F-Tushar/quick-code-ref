# Regular Expressions in Python

[Back to Python Index](/Python/) | [Back to Main](/README.md)

---

## Pattern Matching

### Code Example
```python
import re

text = "My email is test@example.com"
pattern = r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b'

match = re.search(pattern, text)
if match:
    print(f"Email found: {match.group()}")

# Expected Output:
# Email found: test@example.com
```

## Pattern Replacement

### Code Example
```python
import re

text = "Phone: 123-456-7890"
pattern = r'\d{3}-\d{3}-\d{4}'
result = re.sub(pattern, "XXX-XXX-XXXX", text)
print(result)

# Expected Output:
# Phone: XXX-XXX-XXXX
```

## Find All Matches

### Code Example
```python
import re

text = "Prices: $10, $20, $30"
pattern = r'\$\d+'
matches = re.findall(pattern, text)
print(f"Found: {matches}")

# Expected Output:
# Found: ['$10', '$20', '$30']
```

### Common Pitfall ⚠️
Always use raw strings (r"...") for regex patterns to avoid escaping issues.

### Quick Tip ✨
Use re.compile() to precompile patterns for better performance with repeated use.

### Language-Specific Notes
Python's re module provides comprehensive regex support with clean syntax.

---

[Back to Top](#regular-expressions-in-python) | [Back to Python Index](/Python/) | [Back to Main](/README.md)
