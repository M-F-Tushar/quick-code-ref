# Error Handling & Exceptions in JavaScript

[Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)

---

## Try-Catch Blocks

### Code Example
```javascript
function divide(a, b) {
    if (b === 0) {
        throw new Error("Division by zero");
    }
    return a / b;
}

try {
    let result = divide(10, 0);
    console.log(`Result: ${result}`);
} catch (error) {
    console.log(`Error: ${error.message}`);
} finally {
    console.log("Cleanup code here");
}

// Expected Output:
// Error: Division by zero
// Cleanup code here
```

### Common Pitfall ⚠️
JavaScript doesn't have typed exceptions. Check error properties to identify error types.

### Quick Tip ✨
Use `throw new Error()` to create error objects with stack traces.

### Language-Specific Notes
JavaScript uses try-catch-finally blocks. Async code requires special error handling.

---

[Back to Top](#error-handling--exceptions-in-javascript) | [Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)
