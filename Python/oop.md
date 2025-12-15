# Object-Oriented Programming in Python

[Back to Python Index](/Python/) | [Back to Main](/README.md)

---

## Class Definition and Objects

### Code Example
```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    
    def display(self):
        print(f"Name: {self.name}, Age: {self.age}")

person = Person("Alice", 25)
person.display()

# Expected Output:
# Name: Alice, Age: 25
```

## Inheritance

### Code Example
```python
class Animal:
    def eat(self):
        print("Eating...")

class Dog(Animal):
    def bark(self):
        print("Barking...")

dog = Dog()
dog.eat()   # Inherited method
dog.bark()  # Own method

# Expected Output:
# Eating...
# Barking...
```

### Common Pitfall ⚠️
Forgetting `self` parameter in methods is a common mistake.

### Quick Tip ✨
Use `__init__` for constructors and `__str__` for string representation.

### Language-Specific Notes
Python supports multiple inheritance and uses duck typing.

---

[Back to Top](#object-oriented-programming-in-python) | [Back to Python Index](/Python/) | [Back to Main](/README.md)
