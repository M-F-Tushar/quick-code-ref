# File I/O & Input/Output in JavaScript

[Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)

---

## Console Input/Output (Node.js)

### Code Example
```javascript
const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Enter your name: ', (name) => {
    rl.question('Enter your age: ', (age) => {
        console.log(`Hello, ${name}! You are ${age} years old.`);
        rl.close();
    });
});
```

## File Writing (Node.js)

### Code Example
```javascript
const fs = require('fs');

const content = "Hello, File!\nWriting to file in JavaScript.\n";

fs.writeFile('output.txt', content, (err) => {
    if (err) {
        console.error('Error writing file:', err);
        return;
    }
    console.log('File written successfully.');
});
```

## File Reading (Node.js)

### Code Example
```javascript
const fs = require('fs');

fs.readFile('output.txt', 'utf8', (err, data) => {
    if (err) {
        console.error('Error reading file:', err);
        return;
    }
    console.log(data);
});
```

### Common Pitfall ⚠️
File operations in Node.js are asynchronous by default. Use callbacks, promises, or async/await.

### Quick Tip ✨
Use fs.promises for promise-based file operations or fs/promises module.

### Language-Specific Notes
JavaScript file I/O requires Node.js runtime. Browser JavaScript uses different APIs.

---

[Back to Top](#file-io--inputoutput-in-javascript) | [Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)
