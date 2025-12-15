# Collections in JavaScript

[Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)

---

## Array (Dynamic Array)

### Code Example
```javascript
let numbers = [10, 20, 30];
numbers.push(40);  // Add element

for (let num of numbers) {
    console.log(num);
}

// Expected Output:
// 10
// 20
// 30
// 40
```

## Set (Unique Elements)

### Code Example
```javascript
let uniqueNumbers = new Set([10, 20, 10, 30]);
uniqueNumbers.add(40);

for (let num of uniqueNumbers) {
    console.log(num);
}

// Expected Output:
// 10
// 20
// 30
// 40
```

## Map (Key-Value Pairs)

### Code Example
```javascript
let ages = new Map();
ages.set("Alice", 25);
ages.set("Bob", 30);

for (let [name, age] of ages) {
    console.log(`${name}: ${age}`);
}

// Expected Output:
// Alice: 25
// Bob: 30
```

### Common Pitfall ⚠️
Use Map for key-value pairs, not plain objects, when keys might not be strings.

### Quick Tip ✨
Use array methods like `map()`, `filter()`, `reduce()` for functional programming.

### Language-Specific Notes
JavaScript has Array, Set, Map, and WeakSet/WeakMap for garbage collection-friendly collections.

---

[Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)
