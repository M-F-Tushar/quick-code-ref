# Arrays in JavaScript

[Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)

---

## Array Declaration and Initialization

### Syntax
```javascript
const arrayName = [];                    // Empty array
const arrayName = [values];              // Array with values
const arrayName = new Array(size);       // With size (not recommended)
const arrayName = Array.from(iterable);  // From iterable
```

### Explanation
JavaScript arrays are dynamic, heterogeneous objects that can hold elements of different types and resize automatically.

### Code Example
```javascript
// Array initialization
const numbers = [10, 20, 30, 40, 50];
console.log("Array created with 5 elements");

// Expected Output:
// Array created with 5 elements
```

### Time/Space Complexity
O(n) time for initialization, O(n) space where n is array size

### Common Pitfall ⚠️
Using `new Array(5)` creates array with 5 empty slots, not 5 undefined values. Prefer literal syntax [].

### Quick Tip ✨
Use const for arrays to prevent reassignment while still allowing mutations: `const arr = [1,2,3];`.

### Language-Specific Notes
JavaScript arrays are objects with numeric keys. They can be sparse (have gaps in indices).

---

## Accessing Array Elements

### Syntax
```javascript
arrayName[index]
arrayName.at(index)  // ES2022, supports negative indexing
```

### Explanation
Arrays use zero-based indexing. ES2022 added at() method which supports negative indices like Python.

### Code Example
```javascript
// Accessing array elements
const numbers = [10, 20, 30, 40, 50];
console.log(`First element: ${numbers[0]}`);    // Access first
console.log(`Third element: ${numbers[2]}`);    // Access third

// Expected Output:
// First element: 10
// Third element: 30
```

### Time/Space Complexity
O(1) time for element access, O(1) space

### Common Pitfall ⚠️
Accessing out-of-bounds indices returns undefined instead of throwing an error.

### Quick Tip ✨
Use optional chaining for safe access: `array[0]?.property` prevents errors if element is undefined.

### Language-Specific Notes
JavaScript returns undefined for out-of-bounds access, unlike Java's exception or C's undefined behavior.

---

## Array Length

### Syntax
```javascript
arrayName.length
```

### Explanation
The length property returns the number of elements. It's writable - setting it can truncate or extend the array.

### Code Example
```javascript
// Get array length
const numbers = [10, 20, 30, 40, 50];
const size = numbers.length;             // Get array length
console.log(`Array length: ${size}`);

// Expected Output:
// Array length: 5
```

### Time/Space Complexity
O(1) time, O(1) space

### Common Pitfall ⚠️
Setting length to a smaller value truncates the array, permanently removing elements.

### Quick Tip ✨
Use length property in loops: `for (let i = 0; i < array.length; i++)`.

### Language-Specific Notes
JavaScript length is writable. Setting `arr.length = 0` is a common way to empty an array.

---

## Iterating Through Arrays

### Syntax
```javascript
for (let i = 0; i < array.length; i++) { }  // Index-based
for (const element of array) { }             // for...of loop
array.forEach((element, index) => { })       // forEach method
```

### Explanation
JavaScript offers multiple iteration methods: traditional for, for...of, forEach, map, filter, reduce.

### Code Example
```javascript
// Iterate through array
const numbers = [10, 20, 30, 40, 50];
console.log("Elements: ");
for (let i = 0; i < numbers.length; i++) {  // Iterate through array
    console.log(numbers[i] + " ");
}

// Expected Output:
// Elements: 
// 10 20 30 40 50
```

### Time/Space Complexity
O(n) time where n is array length, O(1) space

### Common Pitfall ⚠️
Don't use for...in for arrays - it iterates over all enumerable properties, not just array elements.

### Quick Tip ✨
Use for...of for values, forEach for side effects, map for transformations, filter for selection.

### Language-Specific Notes
JavaScript's array methods (forEach, map, filter) accept callbacks, enabling functional programming style.

---

## Finding Sum of Array Elements

### Syntax
```javascript
array.reduce((sum, element) => sum + element, 0)
```

### Explanation
The reduce() method accumulates values by applying a function to each element with an accumulator.

### Code Example
```javascript
// Sum calculation
const numbers = [10, 20, 30, 40, 50];   // Array with known values
const sum = numbers.reduce((total, num) => total + num, 0);
console.log(`Sum: ${sum}`);

// Expected Output:
// Sum: 150
```

### Time/Space Complexity
O(n) time where n is array length, O(1) space

### Common Pitfall ⚠️
Forgetting the initial value (0) in reduce causes first element to be used as initial value.

### Quick Tip ✨
Always provide initial value to reduce: `array.reduce(fn, initialValue)` for predictable behavior.

### Language-Specific Notes
JavaScript's reduce is powerful for any accumulation: sum, product, object building, flattening nested arrays.

---

## Array Methods

### Syntax
```javascript
array.push(element)       // Add to end
array.pop()               // Remove from end
array.unshift(element)    // Add to start
array.shift()             // Remove from start
array.splice(index, count, items...)  // Insert/remove at any position
```

### Explanation
JavaScript arrays have numerous methods for adding, removing, and manipulating elements.

### Code Example
```javascript
// Array methods
const numbers = [10, 20, 30, 40, 50];
numbers.push(60);                    // Add to end
console.log(`After push: ${numbers}`);
numbers.pop();                       // Remove last
console.log(`After pop: ${numbers}`);

// Expected Output:
// After push: 10,20,30,40,50,60
// After pop: 10,20,30,40,50
```

### Time/Space Complexity
push/pop: O(1). unshift/shift: O(n). splice: O(n)

### Common Pitfall ⚠️
Many array methods mutate the original array. Use spread operator [...array] to create copies first.

### Quick Tip ✨
Use immutable methods (map, filter, slice) for functional programming; mutating methods (push, splice) for imperative style.

### Language-Specific Notes
JavaScript distinguishes between mutating (push, splice) and non-mutating (map, filter, slice) array methods.

---

## Array Slicing

### Syntax
```javascript
array.slice(start, end)   // Extract elements (end exclusive)
array.slice()             // Shallow copy entire array
```

### Explanation
The slice() method returns a shallow copy of a portion of an array without modifying the original.

### Code Example
```javascript
// Array slicing
const numbers = [10, 20, 30, 40, 50];
console.log(`First 3: ${numbers.slice(0, 3)}`);      // First 3
console.log(`Last 2: ${numbers.slice(-2)}`);          // Last 2
console.log(`Copy: ${numbers.slice()}`);              // Shallow copy

// Expected Output:
// First 3: 10,20,30
// Last 2: 40,50
// Copy: 10,20,30,40,50
```

### Time/Space Complexity
O(k) time and space where k is the slice size

### Common Pitfall ⚠️
slice() creates shallow copy - nested objects/arrays are referenced, not cloned.

### Quick Tip ✨
Use slice() for array copying: `const copy = original.slice();` or spread: `const copy = [...original];`.

### Language-Specific Notes
JavaScript slice() is inspired by Python's slicing but uses method syntax and doesn't support step.

---

## Higher-Order Array Methods

### Syntax
```javascript
array.map(callback)       // Transform each element
array.filter(callback)    // Select elements by condition
array.reduce(callback, initial)  // Accumulate to single value
array.find(callback)      // Find first matching element
array.some(callback)      // Check if any element matches
array.every(callback)     // Check if all elements match
```

### Explanation
JavaScript provides functional programming methods for declarative array operations.

### Code Example
```javascript
// Higher-order methods
const numbers = [10, 20, 30, 40, 50];
const doubled = numbers.map(x => x * 2);     // Double each
console.log(`Doubled: ${doubled}`);
const large = numbers.filter(x => x >= 30);  // Filter
console.log(`>= 30: ${large}`);

// Expected Output:
// Doubled: 20,40,60,80,100
// >= 30: 30,40,50
```

### Time/Space Complexity
O(n) time for most methods, space varies (map/filter create new arrays, some/every don't)

### Common Pitfall ⚠️
These methods don't modify the original array - they return new arrays or values.

### Quick Tip ✨
Chain methods for complex operations: `array.filter(x => x > 0).map(x => x * 2).reduce((a,b) => a+b, 0)`.

### Language-Specific Notes
JavaScript's functional array methods enable declarative, immutable programming style similar to functional languages.

---

[Back to Top](#arrays-in-javascript) | [Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)
