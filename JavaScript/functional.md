# Functional Programming Features in JavaScript

[Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)

---

## Arrow Functions (Lambda)

### Code Example
```javascript
// Arrow function
const square = (x) => x * x;

let numbers = [1, 2, 3, 4, 5];
numbers.forEach(num => console.log(square(num)));

// Expected Output:
// 1
// 4
// 9
// 16
// 25
```

## Map, Filter, Reduce

### Code Example
```javascript
let numbers = [1, 2, 3, 4, 5];

// Map: square each number
let squared = numbers.map(x => x * x);
console.log(`Squared: ${squared}`);

// Filter: only even numbers
let evens = numbers.filter(x => x % 2 === 0);
console.log(`Evens: ${evens}`);

// Reduce: sum all numbers
let sum = numbers.reduce((a, b) => a + b, 0);
console.log(`Sum: ${sum}`);

// Expected Output:
// Squared: 1,4,9,16,25
// Evens: 2,4
// Sum: 15
```

## Closures

### Code Example
```javascript
function makeCounter() {
    let count = 0;
    return function() {
        count++;
        return count;
    };
}

let counter = makeCounter();
console.log(counter());  // 1
console.log(counter());  // 2
console.log(counter());  // 3

// Expected Output:
// 1
// 2
// 3
```

### Common Pitfall ⚠️
Arrow functions don't have their own `this` context. Use regular functions when needed.

### Quick Tip ✨
Use array methods (map, filter, reduce) for functional-style data processing.

### Language-Specific Notes
JavaScript has excellent functional programming support with first-class functions.

---

[Back to Top](#functional-programming-features-in-javascript) | [Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)
