# Loops (For Loops) in JavaScript

[Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)

---

## Basic For Loop

### Syntax
```javascript
for (initialization; condition; increment) {
    // code to repeat
}
```

### Explanation
A for loop repeats a block of code while a condition is true. It consists of initialization, condition check, and increment steps.

### Code Example
```javascript
// Basic for loop
for (let i = 1; i <= 5; i++) {  // Loop from 1 to 5
    console.log(i + " ");
}

// Expected Output:
// 1 2 3 4 5
```

### Time/Space Complexity
O(n) time where n is the number of iterations, O(1) space

### Common Pitfall ⚠️
Using var instead of let can cause hoisting issues and unexpected behavior in loops.

### Quick Tip ✨
Always use let (or const) in for loop declarations, never var, to avoid scope issues.

### Language-Specific Notes
JavaScript has multiple loop types: for, for...of (iterates values), for...in (iterates keys).

---

## Loop with Array Iteration

### Syntax
```javascript
for (let i = 0; i < array.length; i++) {
    // access array[i]
}
// Or for...of (ES6):
for (const element of array) {
    // use element
}
```

### Explanation
For loops iterate through arrays by accessing each element using its index. ES6 for...of provides cleaner iteration.

### Code Example
```javascript
// Iterate through array
const numbers = [10, 20, 30, 40, 50];
for (let i = 0; i < numbers.length; i++) {  // Iterate through array
    console.log(numbers[i] + " ");
}

// Expected Output:
// 10 20 30 40 50
```

### Time/Space Complexity
O(n) time where n is array length, O(1) space

### Common Pitfall ⚠️
Accessing out-of-bounds indices returns undefined instead of throwing an error (unlike Java).

### Quick Tip ✨
Use array.forEach() or for...of for cleaner array iteration: `for (const num of numbers)`.

### Language-Specific Notes
JavaScript arrays have .length property. Use for...of for values, for...in for indices (but avoid for...in with arrays).

---

## Nested Loops

### Syntax
```javascript
for (init1; condition1; increment1) {
    for (init2; condition2; increment2) {
        // code in inner loop
    }
}
```

### Explanation
Nested loops place one loop inside another. The inner loop completes all iterations for each iteration of the outer loop.

### Code Example
```javascript
// 2x2 multiplication table
for (let i = 1; i <= 2; i++) {      // Outer loop
    for (let j = 1; j <= 2; j++) {  // Inner loop
        console.log(i * j + " ");
    }
    console.log("\n");
}

// Expected Output:
// 1 2
// 2 4
```

### Time/Space Complexity
O(n * m) time for nested loops with n and m iterations, O(1) space

### Common Pitfall ⚠️
Using var for loop variables in nested loops causes variable leaking across iterations.

### Quick Tip ✨
Use let for proper block scoping in nested loops to avoid variable collision bugs.

### Language-Specific Notes
JavaScript's let (ES6) creates block-scoped variables, fixing the classic var closure problems in loops.

---

## Break Statement

### Syntax
```javascript
for (...) {
    if (condition) {
        break;  // exit loop immediately
    }
}
```

### Explanation
The break statement immediately exits the innermost enclosing loop, skipping remaining iterations.

### Code Example
```javascript
// Break example
for (let i = 1; i <= 10; i++) {
    if (i === 6) {
        break;                   // Exit loop when i is 6
    }
    console.log(i + " ");
}

// Expected Output:
// 1 2 3 4 5
```

### Time/Space Complexity
O(n) time in worst case, can be O(1) to O(n) depending on break condition, O(1) space

### Common Pitfall ⚠️
Break doesn't work with forEach(). Use traditional for loops or for...of when you need to break.

### Quick Tip ✨
Use break with search operations. For arrays, consider array.find() or array.some() as alternatives.

### Language-Specific Notes
JavaScript's array methods like .find() and .some() provide functional alternatives to loops with break.

---

## Continue Statement

### Syntax
```javascript
for (...) {
    if (condition) {
        continue;  // skip to next iteration
    }
}
```

### Explanation
The continue statement skips the rest of the current iteration and moves to the next iteration of the loop.

### Code Example
```javascript
// Continue example
for (let i = 1; i <= 5; i++) {
    if (i === 3) {
        continue;                // Skip when i is 3
    }
    console.log(i + " ");
}

// Expected Output:
// 1 2 4 5
```

### Time/Space Complexity
O(n) time where n is the number of iterations, O(1) space

### Common Pitfall ⚠️
Continue doesn't work with forEach(). Use filter() or traditional loops when you need to skip iterations.

### Quick Tip ✨
Use array.filter() for cleaner code when skipping elements: `numbers.filter(i => i !== 3)`.

### Language-Specific Notes
JavaScript's functional array methods (.filter(), .map(), .reduce()) often eliminate the need for continue.

---

## Sum Calculation Example

### Syntax
```javascript
let sum = 0;
for (let i = start; i <= end; i++) {
    sum += i;
}
```

### Explanation
A common loop pattern accumulates values by adding each element to a running total.

### Code Example
```javascript
// Sum calculation
let sum = 0;
for (let i = 1; i <= 5; i++) {  // Sum numbers 1 to 5
    sum += i;
}
console.log(`Sum: ${sum}`);

// Expected Output:
// Sum: 15
```

### Time/Space Complexity
O(n) time where n is the number of iterations, O(1) space

### Common Pitfall ⚠️
Forgetting to initialize sum to 0 results in NaN when adding to undefined.

### Quick Tip ✨
Use array.reduce() for functional-style summation: `[1,2,3,4,5].reduce((sum, n) => sum + n, 0)`.

### Language-Specific Notes
JavaScript's reduce() method is the functional programming way to accumulate values from arrays.

---

[Back to Top](#loops-for-loops-in-javascript) | [Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)
