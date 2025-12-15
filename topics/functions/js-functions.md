# Functions in JavaScript

[Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)

---

## Function Declaration and Definition

### Syntax
```javascript
function functionName(parameters) {
    // function body
}
```

### Explanation
JavaScript functions are first-class objects. They can be declared, assigned to variables, passed as arguments, and returned from other functions.

### Code Example
```javascript
// Function declaration
function greet() {
    console.log("Hello, World!");
}

greet();                         // Function call

// Expected Output:
// Hello, World!
```

### Time/Space Complexity
O(1) time for function call overhead, O(1) space for activation record

### Common Pitfall ⚠️
Function declarations are hoisted - they can be called before their definition in the code.

### Quick Tip ✨
Use function declarations for named functions you want hoisted, function expressions for more control.

### Language-Specific Notes
JavaScript has multiple ways to define functions: declarations, expressions, arrow functions, and methods.

---

## Function with Parameters

### Syntax
```javascript
function functionName(param1, param2) {
    // use parameters
}
```

### Explanation
Functions accept parameters. JavaScript uses pass-by-value for primitives and pass-by-reference for objects.

### Code Example
```javascript
// Function with parameters
function printSum(a, b) {
    const sum = a + b;
    console.log(`Sum: ${sum}`);
}

printSum(10, 20);                // Pass arguments

// Expected Output:
// Sum: 30
```

### Time/Space Complexity
O(1) time, O(1) space for parameter passing

### Common Pitfall ⚠️
JavaScript doesn't enforce parameter count - extra arguments are ignored, missing ones are undefined.

### Quick Tip ✨
Use default parameters (ES6): `function func(a, b = 0)` to handle missing arguments gracefully.

### Language-Specific Notes
JavaScript's flexible parameter handling allows variadic functions but requires careful handling of undefined values.

---

## Function with Return Value

### Syntax
```javascript
function functionName(parameters) {
    // computation
    return value;
}
```

### Explanation
Functions return values using the return statement. Functions without explicit return statement return undefined.

### Code Example
```javascript
// Function returns value
function multiply(a, b) {
    return a * b;                // Return the result
}

const result = multiply(5, 6);
console.log(`Result: ${result}`);

// Expected Output:
// Result: 30
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Automatic semicolon insertion can break return statements split across lines.

### Quick Tip ✨
Keep return value on the same line as return keyword to avoid ASI issues.

### Language-Specific Notes
JavaScript functions always return something - undefined if no explicit return statement is provided.

---

## Recursive Function - Calculate Factorial

### Syntax
```javascript
function functionName(parameters) {
    if (base_case) return base_value;
    return recursive_call;
}
```

### Explanation
Recursive functions call themselves with modified parameters until reaching a base case. Useful for problems with recursive structure.

### Code Example
```javascript
// Recursive function
function calculateFactorial(number) {
    if (number <= 1) {           // Base case
        return 1;
    }
    return number * calculateFactorial(number - 1);  // Recursive call
}

const result = calculateFactorial(5);
console.log(`Factorial of 5: ${result}`);

// Expected Output:
// Factorial of 5: 120
```

### Time/Space Complexity
O(n) time, O(n) space for call stack where n is the input number

### Common Pitfall ⚠️
Deep recursion can cause stack overflow. JavaScript engines have limited stack size.

### Quick Tip ✨
Consider iterative solutions or use tail call optimization (strict mode in some engines).

### Language-Specific Notes
ES6 introduced proper tail calls, but support varies across engines. Check compatibility before relying on it.

---

## Arrow Functions (ES6)

### Syntax
```javascript
const functionName = (parameters) => expression;
const functionName = (parameters) => { /* statements */ };
```

### Explanation
Arrow functions provide concise syntax and lexically bind 'this'. They don't have their own this, arguments, super, or new.target.

### Code Example
```javascript
// Arrow function
const multiply = (a, b) => a * b;
const result = multiply(7, 8);
console.log(`Result: ${result}`);

// Expected Output:
// Result: 56
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Arrow functions can't be used as constructors and don't have their own 'this' binding.

### Quick Tip ✨
Use arrow functions for callbacks and short functions; use regular functions when you need 'this' binding.

### Language-Specific Notes
Arrow functions with single expressions have implicit return. Use {} for multiple statements.

---

## Function Expressions

### Syntax
```javascript
const functionName = function(parameters) {
    // function body
};
```

### Explanation
Function expressions assign a function to a variable. Unlike declarations, they're not hoisted.

### Code Example
```javascript
// Function expression
const greet = function(name) {
    console.log(`Hello, ${name}!`);
};

greet("Alice");

// Expected Output:
// Hello, Alice!
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Function expressions are not hoisted - they must be defined before use.

### Quick Tip ✨
Use const for function expressions to prevent accidental reassignment.

### Language-Specific Notes
Named function expressions help with debugging by providing function names in stack traces.

---

## Rest Parameters and Spread

### Syntax
```javascript
function functionName(...rest) {  // Rest parameters
    // rest is an array
}
functionName(...array);           // Spread operator
```

### Explanation
Rest parameters collect multiple arguments into an array. Spread operator expands an array into individual arguments.

### Code Example
```javascript
// Rest parameters
function sum(...numbers) {
    return numbers.reduce((total, n) => total + n, 0);
}

console.log(`Sum: ${sum(1, 2, 3, 4, 5)}`);

// Expected Output:
// Sum: 15
```

### Time/Space Complexity
O(n) time where n is number of arguments, O(n) space for array

### Common Pitfall ⚠️
Rest parameter must be the last parameter in the function signature.

### Quick Tip ✨
Use rest parameters instead of the arguments object for cleaner, more readable code.

### Language-Specific Notes
ES6 rest parameters create real arrays, unlike the array-like arguments object in older JavaScript.

---

[Back to Top](#functions-in-javascript) | [Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)
