# Functions in Python

[Back to Python Index](/Python/) | [Back to Main](/README.md)

---

## Function Declaration and Definition

### Syntax
```python
def function_name(parameters):
    # function body
    return value  # optional
```

### Explanation
Python functions are defined using the def keyword. No separate declaration is needed - definition serves as declaration.

### Code Example
```python
# Function definition
def greet():
    print("Hello, World!")

greet()                          # Function call

# Expected Output:
# Hello, World!
```

### Time/Space Complexity
O(1) time for function call overhead, O(1) space for activation record

### Common Pitfall ⚠️
Forgetting the colon (:) after the function definition line causes a syntax error.

### Quick Tip ✨
Use docstrings (triple quotes) right after def to document what the function does.

### Language-Specific Notes
Python functions are first-class objects - they can be assigned to variables, passed as arguments, and returned.

---

## Function with Parameters

### Syntax
```python
def function_name(param1, param2):
    # use parameters
```

### Explanation
Functions accept parameters. Python uses pass-by-object-reference - immutable objects behave like pass-by-value, mutable like pass-by-reference.

### Code Example
```python
# Function with parameters
def print_sum(a, b):
    sum_value = a + b
    print(f"Sum: {sum_value}")

print_sum(10, 20)                # Pass arguments

# Expected Output:
# Sum: 30
```

### Time/Space Complexity
O(1) time, O(1) space for parameter passing

### Common Pitfall ⚠️
Modifying mutable default arguments (like lists) persists across function calls.

### Quick Tip ✨
Use None as default for mutable parameters: `def func(items=None): if items is None: items = []`.

### Language-Specific Notes
Python supports positional, keyword, default, and variable-length (*args, **kwargs) parameters.

---

## Function with Return Value

### Syntax
```python
def function_name(parameters):
    # computation
    return value
```

### Explanation
Functions return values using the return statement. Python functions can return multiple values as tuples.

### Code Example
```python
# Function returns value
def multiply(a, b):
    return a * b                 # Return the result

result = multiply(5, 6)
print(f"Result: {result}")

# Expected Output:
# Result: 30
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Functions without explicit return statement return None by default.

### Quick Tip ✨
Return multiple values as a tuple: `return x, y, z` can be unpacked: `a, b, c = func()`.

### Language-Specific Notes
Python allows returning multiple values using tuple packing/unpacking, making it cleaner than other languages.

---

## Recursive Function - Calculate Factorial

### Syntax
```python
def function_name(parameters):
    if base_case:
        return base_value
    return recursive_call
```

### Explanation
Recursive functions call themselves with modified parameters until reaching a base case. Useful for problems with recursive structure.

### Code Example
```python
# Recursive function
def calculate_factorial(number):
    if number <= 1:              # Base case
        return 1
    return number * calculate_factorial(number - 1)  # Recursive call

result = calculate_factorial(5)
print(f"Factorial of 5: {result}")

# Expected Output:
# Factorial of 5: 120
```

### Time/Space Complexity
O(n) time, O(n) space for call stack where n is the input number

### Common Pitfall ⚠️
Python has a default recursion limit (~1000). Deep recursion causes RecursionError.

### Quick Tip ✨
Increase recursion limit with `sys.setrecursionlimit()` if needed, or use iterative solutions.

### Language-Specific Notes
Python doesn't optimize tail recursion. Consider iterative solutions or use the lru_cache decorator for memoization.

---

## Lambda Functions

### Syntax
```python
lambda parameters: expression
```

### Explanation
Lambda functions are anonymous, single-expression functions. Useful for short operations, especially with map, filter, sorted.

### Code Example
```python
# Lambda function
multiply = lambda a, b: a * b
result = multiply(7, 8)
print(f"Result: {result}")

# Expected Output:
# Result: 56
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Lambda functions are limited to single expressions - no statements or multiple lines allowed.

### Quick Tip ✨
Use lambda for simple operations in functional programming. For complex logic, use regular def functions.

### Language-Specific Notes
Lambdas are expressions, not statements, so they can be used anywhere expressions are valid.

---

## Functions with Default Parameters

### Syntax
```python
def function_name(param1, param2=default_value):
    # function body
```

### Explanation
Parameters can have default values. Arguments with defaults can be omitted during function calls.

### Code Example
```python
# Function with default parameter
def greet(name, greeting="Hello"):
    print(f"{greeting}, {name}!")

greet("Alice")                   # Uses default greeting
greet("Bob", "Hi")              # Overrides default

# Expected Output:
# Hello, Alice!
# Hi, Bob!
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Mutable default arguments (lists, dicts) are created once and shared across calls, causing unexpected behavior.

### Quick Tip ✨
Parameters with defaults must come after parameters without defaults in the function signature.

### Language-Specific Notes
Python evaluates default arguments once at function definition time, not at call time.

---

## Decorators

### Syntax
```python
@decorator_name
def function_name():
    # function body
```

### Explanation
Decorators modify or enhance functions without changing their code. They're functions that take functions as input and return modified functions.

### Code Example
```python
# Simple decorator
def uppercase_decorator(func):
    def wrapper():
        result = func()
        return result.upper()
    return wrapper

@uppercase_decorator
def greet():
    return "hello, world!"

print(greet())

# Expected Output:
# HELLO, WORLD!
```

### Time/Space Complexity
O(1) time overhead, O(1) space for wrapper

### Common Pitfall ⚠️
Forgetting to use functools.wraps in decorators loses original function metadata.

### Quick Tip ✨
Use `@functools.wraps(func)` in wrapper functions to preserve original function's name and docstring.

### Language-Specific Notes
Decorators are syntactic sugar for function composition. @decorator is equivalent to `func = decorator(func)`.

---

[Back to Top](#functions-in-python) | [Back to Python Index](/Python/) | [Back to Main](/README.md)
