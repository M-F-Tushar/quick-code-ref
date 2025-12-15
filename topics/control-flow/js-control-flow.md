# Control Flow (If/Else) in JavaScript

[Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)

---

## Basic If Statement

### Syntax
```javascript
if (condition) {
    // code to execute if condition is true
}
```

### Explanation
The if statement executes a block of code only when the specified condition evaluates to a truthy value.

### Code Example
```javascript
// Basic if statement
let score = 85;
if (score >= 80) {              // Check if score is 80 or above
    console.log("Great job!");
}

// Expected Output:
// Great job!
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
JavaScript has truthy/falsy values. Empty strings, 0, null, undefined, NaN are falsy and may cause unexpected behavior.

### Quick Tip ✨
Use strict equality (===) and explicit boolean checks to avoid truthy/falsy confusion.

### Language-Specific Notes
JavaScript performs type coercion in conditions. Use explicit comparisons for clarity and safety.

---

## If-Else Statement

### Syntax
```javascript
if (condition) {
    // code if true
} else {
    // code if false
}
```

### Explanation
The if-else statement provides an alternative execution path when the condition is falsy.

### Code Example
```javascript
// If-else statement
let score = 85;
if (score >= 90) {              // Check for excellent score
    console.log("Grade: A");
} else {
    console.log("Grade: B or below");
}

// Expected Output:
// Grade: B or below
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Forgetting braces for multi-line blocks can lead to logic errors, especially when adding code later.

### Quick Tip ✨
Always use braces {} even for single-line blocks - it prevents bugs and follows best practices.

### Language-Specific Notes
JavaScript's automatic semicolon insertion can cause issues if you don't use braces consistently.

---

## If-Else-If Chain

### Syntax
```javascript
if (condition1) {
    // code for condition1
} else if (condition2) {
    // code for condition2
} else {
    // code if all conditions false
}
```

### Explanation
Multiple conditions can be checked in sequence. The first truthy condition executes its block, then the chain exits.

### Code Example
```javascript
// If-else-if chain
let score = 85;                 // Test with 85
if (score >= 90) {              // Check for A grade
    console.log("Grade: A");
} else if (score >= 80) {       // Check for B grade
    console.log("Grade: B");
} else if (score >= 70) {       // Check for C grade
    console.log("Grade: C");
} else {
    console.log("Grade: F");
}

// Expected Output:
// Grade: B
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Order matters! Place more specific conditions before general ones to avoid unreachable code.

### Quick Tip ✨
Consider using switch statements or object lookups for many equality comparisons.

### Language-Specific Notes
JavaScript short-circuits evaluation - subsequent conditions aren't checked after a match is found.

---

## Nested If Statements

### Syntax
```javascript
if (condition1) {
    if (condition2) {
        // code when both true
    }
}
```

### Explanation
If statements can be nested inside other if statements to check multiple related conditions.

### Code Example
```javascript
// Nested if statements
let score = 85;
let attendance = 95;
if (score >= 80) {              // First check score
    if (attendance >= 90) {      // Then check attendance
        console.log("Excellent performance!");
    }
}

// Expected Output:
// Excellent performance!
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Deep nesting reduces readability. Consider using logical operators (&&, ||) or early returns instead.

### Quick Tip ✨
Use logical operators for cleaner code: `if (score >= 80 && attendance >= 90)` instead of nesting.

### Language-Specific Notes
JavaScript supports early returns and guard clauses, making it easy to avoid deep nesting in functions.

---

## Ternary Operator

### Syntax
```javascript
result = (condition) ? value_if_true : value_if_false;
```

### Explanation
The ternary operator provides a concise way to assign values based on a condition in a single expression.

### Code Example
```javascript
// Ternary operator
let score = 85;
let result = (score >= 80) ? "Pass" : "Fail";  // Compact if-else
console.log(`Result: ${result}`);

// Expected Output:
// Result: Pass
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Nesting ternary operators creates unreadable code. Use regular if-else for complex conditions.

### Quick Tip ✨
Use ternary operators only for simple value assignments. They work well with const declarations.

### Language-Specific Notes
The ternary operator is an expression and can be used anywhere expressions are allowed, including JSX in React.

---

[Back to Top](#control-flow-ifelse-in-javascript) | [Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)
