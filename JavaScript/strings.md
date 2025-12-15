# Strings & String Operations in JavaScript

[Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)

---

For complete string operations in JavaScript including concatenation, comparison, substring, searching, replacement, formatting, and case conversion.

## String Declaration

### Syntax
```javascript
let str = "text";
let str = 'text';
let str = `template literal`;
```

### Code Example
```javascript
let greeting = "Hello";
let name = "Alice";
console.log(`Greeting: ${greeting}`);
console.log(`Name: ${name}`);
console.log(`Length: ${name.length}`);

// Expected Output:
// Greeting: Hello
// Name: Alice
// Length: 5
```

## String Concatenation

### Code Example
```javascript
let firstName = "John";
let lastName = " Doe";
let fullName = firstName + lastName;
console.log(`Full name: ${fullName}`);

// Expected Output:
// Full name: John Doe
```

## String Comparison

### Code Example
```javascript
let str1 = "apple";
let str2 = "banana";
console.log(`Equal: ${str1 === str2}`);
console.log(`${str1} < ${str2}: ${str1 < str2}`);
if (str1 < str2) {
    console.log(`${str1} comes before ${str2}`);
}

// Expected Output:
// Equal: false
// apple < banana: true
// apple comes before banana
```

## String Slicing and Searching

### Code Example
```javascript
let text = "Hello World";
let sub = text.substring(6, 11);  // From index 6 to 11
console.log(`Substring: ${sub}`);

let pos = text.indexOf("World");
console.log(`Found 'World' at position: ${pos}`);

// Expected Output:
// Substring: World
// Found 'World' at position: 6
```

## String Replacement and Case Conversion

### Code Example
```javascript
let text = "Hello World";
let replaced = text.replace("World", "JavaScript");
console.log(`Replaced: ${replaced}`);

console.log(`Uppercase: ${text.toUpperCase()}`);
console.log(`Lowercase: ${text.toLowerCase()}`);

// Expected Output:
// Replaced: Hello JavaScript
// Uppercase: HELLO WORLD
// Lowercase: hello world
```

## Template Literals

### Code Example
```javascript
let name = "Alice";
let age = 25;
let formatted = `Name: ${name}, Age: ${age}`;
console.log(formatted);

// Expected Output:
// Name: Alice, Age: 25
```

### Common Pitfall ⚠️
Strings in JavaScript are immutable. All string methods return new strings.

### Quick Tip ✨
Use template literals (backticks) for multi-line strings and easy interpolation.

### Language-Specific Notes
JavaScript has three ways to create strings: single quotes, double quotes, and template literals.

---

[Back to Top](#strings--string-operations-in-javascript) | [Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)
