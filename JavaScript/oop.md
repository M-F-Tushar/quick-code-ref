# Object-Oriented Programming in JavaScript

[Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)

---

## Class Definition and Objects (ES6+)

### Code Example
```javascript
class Person {
    constructor(name, age) {
        this.name = name;
        this.age = age;
    }
    
    display() {
        console.log(`Name: ${this.name}, Age: ${this.age}`);
    }
}

let person = new Person("Alice", 25);
person.display();

// Expected Output:
// Name: Alice, Age: 25
```

## Inheritance

### Code Example
```javascript
class Animal {
    eat() {
        console.log("Eating...");
    }
}

class Dog extends Animal {
    bark() {
        console.log("Barking...");
    }
}

let dog = new Dog();
dog.eat();   // Inherited method
dog.bark();  // Own method

// Expected Output:
// Eating...
// Barking...
```

### Common Pitfall ⚠️
JavaScript uses prototypal inheritance. ES6 classes are syntactic sugar.

### Quick Tip ✨
Use `super()` to call parent class constructor in derived classes.

### Language-Specific Notes
JavaScript supports prototype-based and class-based OOP (ES6+).

---

[Back to Top](#object-oriented-programming-in-javascript) | [Back to JavaScript Index](/JavaScript/) | [Back to Main](/README.md)
