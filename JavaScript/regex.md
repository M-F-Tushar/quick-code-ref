# Regular Expressions in JavaScript

[Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)

---

## Pattern Matching

### Code Example
```javascript
let text = "My email is test@example.com";
let pattern = /\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b/;

let match = text.match(pattern);
if (match) {
    console.log(`Email found: ${match[0]}`);
}

// Expected Output:
// Email found: test@example.com
```

## Pattern Replacement

### Code Example
```javascript
let text = "Phone: 123-456-7890";
let pattern = /\d{3}-\d{3}-\d{4}/;
let result = text.replace(pattern, "XXX-XXX-XXXX");
console.log(result);

// Expected Output:
// Phone: XXX-XXX-XXXX
```

## Find All Matches

### Code Example
```javascript
let text = "Prices: $10, $20, $30";
let pattern = /\$\d+/g;  // 'g' flag for global search
let matches = text.match(pattern);
console.log(`Found: ${matches}`);

// Expected Output:
// Found: $10,$20,$30
```

## Test Method

### Code Example
```javascript
let email = "test@example.com";
let pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

if (pattern.test(email)) {
    console.log("Valid email format");
}

// Expected Output:
// Valid email format
```

### Common Pitfall ⚠️
Forgetting the 'g' flag for global matching returns only the first match.

### Quick Tip ✨
Use test() for boolean checks, match() to extract matches.

### Language-Specific Notes
JavaScript has built-in regex support with literal notation /pattern/flags.

---

[Back to Top](#regular-expressions-in-javascript) | [Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)
