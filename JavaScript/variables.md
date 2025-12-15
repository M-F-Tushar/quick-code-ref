# Variables & Data Types in JavaScript

[Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)

---

## Integer Declaration and Initialization

### Syntax
```javascript
let variableName = value;
const variableName = value;
var variableName = value;  // Legacy, avoid
```

### Explanation
JavaScript uses dynamic typing. Numbers are all stored as 64-bit floating point, but can represent integers precisely up to 2^53-1.

### Code Example
```javascript
// Integer variables (stored as numbers)
let userAge = 25;              // Mutable variable with let
const maxScore = 100;          // Immutable variable with const
console.log(`Age: ${userAge}`);  // Print using template literal
console.log(`Max Score: ${maxScore}`);

// Expected Output: 
// Age: 25
// Max Score: 100
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Using `var` can cause hoisting issues and unexpected scope behavior. Always use `let` or `const`.

### Quick Tip ✨
Prefer `const` by default; use `let` only when you need to reassign. Avoid `var` completely.

### Language-Specific Notes
JavaScript has only one number type (floating point). No separate int/float distinction like other languages.

---

## String Declaration and Initialization

### Syntax
```javascript
let variableName = "text";
let variableName = 'text';
let variableName = `template literal`;
```

### Explanation
Strings are immutable sequences of UTF-16 code units. Template literals (backticks) allow embedded expressions and multi-line strings.

### Code Example
```javascript
// String variables
const userName = "Alice";      // String with double quotes
console.log(`Name: ${userName}`);    // Template literal
console.log(`Length: ${userName.length}`);  // Get string length

// Expected Output:
// Name: Alice
// Length: 5
```

### Time/Space Complexity
O(1) time for declaration, O(n) time for string operations where n is string length

### Common Pitfall ⚠️
Using + for string concatenation with many strings creates multiple intermediate strings, impacting performance.

### Quick Tip ✨
Use template literals (backticks) for cleaner string interpolation: `Hello ${name}` instead of "Hello " + name.

### Language-Specific Notes
JavaScript strings are immutable and UTF-16 encoded. Template literals (ES6+) support expressions and multi-line text.

---

## Boolean Values

### Syntax
```javascript
let variableName = true/false;
```

### Explanation
JavaScript has a boolean primitive type with true and false values. Many values have implicit boolean coercion.

### Code Example
```javascript
// Boolean variables
let isActive = true;           // Boolean variable
let isComplete = false;        // Another boolean
console.log(`Active: ${isActive}`);     // Prints true
console.log(`Complete: ${isComplete}`); // Prints false

// Expected Output:
// Active: true
// Complete: false
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Falsy values (0, "", null, undefined, NaN, false) evaluate to false in conditionals, which can cause unexpected behavior.

### Quick Tip ✨
Use strict equality (===) to avoid type coercion: `value === true` instead of `value == true`.

### Language-Specific Notes
JavaScript has six falsy values: false, 0, "", null, undefined, NaN. Everything else is truthy.

---

## Type Conversion and Casting

### Syntax
```javascript
Number(expression)
String(expression)
Boolean(expression)
```

### Explanation
JavaScript performs implicit type coercion automatically, but explicit conversion using Number(), String(), Boolean() is clearer and safer.

### Code Example
```javascript
// Type conversion example
let totalScore = 85;
let maxScore = 100;
let percentage = Number(totalScore) / maxScore * 100;  // Explicit conversion
console.log(`Score: ${totalScore}/${maxScore}`);
console.log(`Percentage: ${percentage.toFixed(2)}%`);

// Expected Output:
// Score: 85/100
// Percentage: 85.00%
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Implicit type coercion with + operator can cause strings and numbers to concatenate instead of add.

### Quick Tip ✨
Use `Number()` for explicit conversion. Avoid implicit coercion to prevent bugs.

### Language-Specific Notes
JavaScript's loose typing and automatic type coercion can lead to unexpected results. Use strict equality (===) when comparing.

---

## Constants

### Syntax
```javascript
const CONSTANT_NAME = value;
```

### Explanation
The `const` keyword creates a constant reference. For primitives, the value is immutable. For objects/arrays, the reference is constant but properties can change.

### Code Example
```javascript
// Constants with const keyword
const MAX_ATTEMPTS = 3;        // Constant value
const PI = 3.14159;            // Another constant
const GRAVITY = 9.81;          // Yet another constant
console.log(`Max Attempts: ${MAX_ATTEMPTS}`);
console.log(`PI: ${PI.toFixed(5)}`);
console.log(`Gravity: ${GRAVITY.toFixed(2)} m/s²`);

// Expected Output:
// Max Attempts: 3
// PI: 3.14159
// Gravity: 9.81 m/s²
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
`const` prevents reassignment but doesn't make objects immutable. You can still modify object properties.

### Quick Tip ✨
Use UPPERCASE for true constants. Use const with camelCase for immutable references to objects.

### Language-Specific Notes
`const` creates a read-only reference. For objects, use Object.freeze() to prevent property modifications.

---

[Back to Top](#variables--data-types-in-javascript) | [Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)
