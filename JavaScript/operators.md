# Operators & Expressions in JavaScript

[Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)

---

## Arithmetic Operators

### Syntax
```javascript
result = operand1 + operand2;  // Addition
result = operand1 - operand2;  // Subtraction
result = operand1 * operand2;  // Multiplication
result = operand1 / operand2;  // Division
result = operand1 % operand2;  // Modulus (remainder)
result = operand1 ** operand2; // Exponentiation (ES2016)
```

### Explanation
Arithmetic operators perform mathematical calculations on numeric values. JavaScript division always returns a floating-point result.

### Code Example
```javascript
let a = 15, b = 4;

console.log(`Addition: ${a} + ${b} = ${a + b}`);
console.log(`Subtraction: ${a} - ${b} = ${a - b}`);
console.log(`Multiplication: ${a} * ${b} = ${a * b}`);
console.log(`Division: ${a} / ${b} = ${a / b}`);
console.log(`Modulus: ${a} % ${b} = ${a % b}`);
console.log(`Exponentiation: ${a} ** 2 = ${a ** 2}`);

// Expected Output:
// Addition: 15 + 4 = 19
// Subtraction: 15 - 4 = 11
// Multiplication: 15 * 4 = 60
// Division: 15 / 4 = 3.75
// Modulus: 15 % 4 = 3
// Exponentiation: 15 ** 2 = 225
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
The `+` operator is overloaded for both addition and string concatenation, which can cause unexpected type coercion.

### Quick Tip ✨
Use `Math.floor()` or `parseInt()` to get integer division results.

### Language-Specific Notes
JavaScript has the `**` exponentiation operator (ES2016+), or use `Math.pow()` for older versions.

---

## Comparison Operators

### Syntax
```javascript
result = (a == b);   // Equal to (with type coercion)
result = (a === b);  // Strict equal to (no type coercion)
result = (a != b);   // Not equal to (with type coercion)
result = (a !== b);  // Strict not equal to (no type coercion)
result = (a < b);    // Less than
result = (a > b);    // Greater than
result = (a <= b);   // Less than or equal to
result = (a >= b);   // Greater than or equal to
```

### Explanation
Comparison operators compare two values and return true or false. JavaScript has both loose (==) and strict (===) equality.

### Code Example
```javascript
let x = 10, y = 20;

console.log(`${x} == ${y}: ${x == y}`);
console.log(`${x} != ${y}: ${x != y}`);
console.log(`${x} < ${y}: ${x < y}`);
console.log(`${x} > ${y}: ${x > y}`);

// Strict vs loose equality
console.log(`5 == "5": ${5 == "5"}`);    // true (type coercion)
console.log(`5 === "5": ${5 === "5"}`);  // false (strict)

// Expected Output:
// 10 == 20: false
// 10 != 20: true
// 10 < 20: true
// 10 > 20: false
// 5 == "5": true
// 5 === "5": false
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Using `==` instead of `===` can lead to unexpected type coercion bugs.

### Quick Tip ✨
Always use `===` and `!==` for comparisons unless you specifically need type coercion.

### Language-Specific Notes
JavaScript has both loose equality (==) with type coercion and strict equality (===) without coercion.

---

## Logical Operators

### Syntax
```javascript
result = (condition1 && condition2);  // Logical AND
result = (condition1 || condition2);  // Logical OR
result = !condition;                   // Logical NOT
```

### Explanation
Logical operators combine or invert boolean expressions. They use short-circuit evaluation and return the actual values, not just true/false.

### Code Example
```javascript
let isAdult = true;
let hasLicense = false;

console.log(`Can drive: ${isAdult && hasLicense}`);
console.log(`Eligible: ${isAdult || hasLicense}`);
console.log(`Not adult: ${!isAdult}`);

// Logical operators return values
let name = null;
let displayName = name || "Guest";  // Returns "Guest"
console.log(`Display name: ${displayName}`);

// Expected Output:
// Can drive: false
// Eligible: true
// Not adult: false
// Display name: Guest
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Logical operators return the actual value that determined the result, not just true/false.

### Quick Tip ✨
Use `||` for default values: `let value = input || defaultValue;`

### Language-Specific Notes
JavaScript uses short-circuit evaluation and returns the value that determined the result, useful for default values.

---

## Bitwise Operators

### Syntax
```javascript
result = a & b;   // Bitwise AND
result = a | b;   // Bitwise OR
result = a ^ b;   // Bitwise XOR
result = ~a;      // Bitwise NOT
result = a << n;  // Left shift
result = a >> n;  // Sign-propagating right shift
result = a >>> n; // Zero-fill right shift
```

### Explanation
Bitwise operators perform operations on individual bits of 32-bit integer values.

### Code Example
```javascript
let a = 12;  // 1100 in binary
let b = 10;  // 1010 in binary

console.log(`AND: ${a} & ${b} = ${a & b}`);      // 1000 = 8
console.log(`OR: ${a} | ${b} = ${a | b}`);       // 1110 = 14
console.log(`XOR: ${a} ^ ${b} = ${a ^ b}`);      // 0110 = 6
console.log(`Left shift: ${a} << 1 = ${a << 1}`); // 11000 = 24

// Expected Output:
// AND: 12 & 10 = 8
// OR: 12 | 10 = 14
// XOR: 12 ^ 10 = 6
// Left shift: 12 << 1 = 24
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
JavaScript converts numbers to 32-bit integers for bitwise operations, which can cause unexpected results with large numbers.

### Quick Tip ✨
Use `~~` (double bitwise NOT) as a fast way to truncate decimals: `~~3.7` returns `3`.

### Language-Specific Notes
JavaScript has three right shift operators: `>>` (sign-propagating) and `>>>` (zero-fill).

---

## Assignment Operators

### Syntax
```javascript
a = value;      // Simple assignment
a += value;     // Add and assign (a = a + value)
a -= value;     // Subtract and assign
a *= value;     // Multiply and assign
a /= value;     // Divide and assign
a %= value;     // Modulus and assign
a **= value;    // Exponentiation and assign (ES2016)
```

### Explanation
Assignment operators assign values to variables. Compound assignment operators combine an operation with assignment.

### Code Example
```javascript
let score = 100;
console.log(`Initial score: ${score}`);

score += 50;  // Add 50
console.log(`After bonus: ${score}`);

score -= 30;  // Subtract 30
console.log(`After penalty: ${score}`);

score *= 2;   // Double it
console.log(`Final score: ${score}`);

// Expected Output:
// Initial score: 100
// After bonus: 150
// After penalty: 120
// Final score: 240
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Forgetting that compound assignments modify the original variable can lead to logic errors.

### Quick Tip ✨
Compound assignment operators are more concise and can be more efficient than separate operations.

### Language-Specific Notes
JavaScript supports destructuring assignment for arrays and objects: `[a, b] = [1, 2];`

---

## Ternary Operator

### Syntax
```javascript
result = condition ? value_if_true : value_if_false;
```

### Explanation
The ternary operator is a compact way to write simple if-else statements. It evaluates a condition and returns one of two values.

### Code Example
```javascript
let age = 18;
let status = (age >= 18) ? "Adult" : "Minor";
console.log(`Age: ${age}, Status: ${status}`);

let a = 10, b = 20;
let max = (a > b) ? a : b;
console.log(`Maximum of ${a} and ${b} is: ${max}`);

// Expected Output:
// Age: 18, Status: Adult
// Maximum of 10 and 20 is: 20
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Overusing ternary operators for complex conditions reduces code readability. Use if-else for clarity.

### Quick Tip ✨
Use ternary operators for simple value assignments based on a single condition.

### Language-Specific Notes
The ternary operator is the only operator in JavaScript that takes three operands.

---

## Increment and Decrement Operators

### Syntax
```javascript
++variable;  // Pre-increment
variable++;  // Post-increment
--variable;  // Pre-decrement
variable--;  // Post-decrement
```

### Explanation
Increment (++) adds 1 to a variable, decrement (--) subtracts 1. Pre-increment/decrement changes the value before using it, post-increment/decrement changes after.

### Code Example
```javascript
let counter = 5;
console.log(`Initial: ${counter}`);
console.log(`Post-increment: ${counter++}`);  // Prints 5, then increments
console.log(`After post-increment: ${counter}`);
console.log(`Pre-increment: ${++counter}`);   // Increments, then prints 7
console.log(`Pre-decrement: ${--counter}`);   // Decrements, then prints 6

// Expected Output:
// Initial: 5
// Post-increment: 5
// After post-increment: 6
// Pre-increment: 7
// Pre-decrement: 6
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Confusing pre and post increment/decrement in expressions can lead to off-by-one errors.

### Quick Tip ✨
Use pre-increment (++i) in loops when the return value isn't needed for consistency.

### Language-Specific Notes
Increment/decrement operators work on variables but not on literal values or expressions.

---

## Nullish Coalescing and Optional Chaining

### Syntax
```javascript
result = value ?? defaultValue;  // Nullish coalescing (ES2020)
result = object?.property;        // Optional chaining (ES2020)
```

### Explanation
Nullish coalescing returns the right operand when the left is null or undefined. Optional chaining safely accesses nested properties.

### Code Example
```javascript
// Nullish coalescing
let userInput = null;
let value = userInput ?? "default";
console.log(`Value: ${value}`);

let count = 0;
let result = count ?? 10;  // Returns 0, not 10 (0 is not nullish)
console.log(`Result: ${result}`);

// Optional chaining
let user = { name: "Alice" };
console.log(`City: ${user?.address?.city ?? "Unknown"}`);

// Expected Output:
// Value: default
// Result: 0
// City: Unknown
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Confusing `??` with `||`. The `??` only checks for null/undefined, while `||` checks for any falsy value.

### Quick Tip ✨
Use `??` when you want to preserve falsy values like 0 or empty string, but provide defaults for null/undefined.

### Language-Specific Notes
These are modern JavaScript features (ES2020) that improve handling of null/undefined values.

---

[Back to Top](#operators--expressions-in-javascript) | [Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)
