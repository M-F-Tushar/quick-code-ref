# Object-Oriented Programming in Java

[Back to Java Index](/Java/) | [Back to Main](/README.md)

---

## Class Definition and Objects

### Code Example
```java
class Person {
    private String name;
    private int age;
    
    // Constructor
    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }
    
    // Method
    public void display() {
        System.out.println("Name: " + name + ", Age: " + age);
    }
}

public class OOPExample {
    public static void main(String[] args) {
        Person person = new Person("Alice", 25);
        person.display();
    }
}
// Expected Output:
// Name: Alice, Age: 25
```

## Inheritance

### Code Example
```java
class Animal {
    public void eat() {
        System.out.println("Eating...");
    }
}

class Dog extends Animal {
    public void bark() {
        System.out.println("Barking...");
    }
}

public class InheritanceExample {
    public static void main(String[] args) {
        Dog dog = new Dog();
        dog.eat();   // Inherited method
        dog.bark();  // Own method
    }
}
// Expected Output:
// Eating...
// Barking...
```

### Common Pitfall ⚠️
Java doesn't support multiple inheritance of classes, only interfaces.

### Quick Tip ✨
Use interfaces for abstraction and multiple inheritance-like behavior.

### Language-Specific Notes
Java is purely object-oriented. Everything is a class except primitives.

---

[Back to Top](#object-oriented-programming-in-java) | [Back to Java Index](/Java/) | [Back to Main](/README.md)
