# Classes

## Definition
Class is a custom data types like struct, we can define properties and method. One key difference betwwen class and struct is we can use inheritance in class.

## Differences Between Class and Struct
- You can make one class build upon functionality in another class, gaining all its properties and methods as a starting point. If you want to selectively override some methods, you can do that too.
- Because of that first point, Swift won’t automatically generate a memberwise initializer for classes. This means you either need to write your own initializer, or assign default values to all your properties.
- When you copy an instance of a class, both copies share the same data – if you change one copy, the other one also changes.
- When the final copy of a class instance is destroyed, Swift can optionally run a special function called a deinitializer.
Even if you make a class constant, you can still change its properties as long as they are variables

## Class Inheritance
```swift
class Employee {
    var name: String
    var hours: Int
    
    init(name: String, hours: Int) {
        self.name = name
        self.hours = hours
    }
    
    func printSummary(){
        print("I work \(self.hours) hours a day")
    }
}

class Developer: Employee {
    var favoriteLanguage: String
    
    init(name: String, hours: Int, favoriteLanguage: String) {
        self.favoriteLanguage = favoriteLanguage
        super.init(name: name, hours: hours)
    }
    
    func work(){
        print("Developer \(self.name) working for \(self.hours) hours")
    }
    
    override func printSummary() {
        print("I write codes \(self.hours) hours a day")
    }
}

var johnDoe = Developer(name: "John Doe", hours: 12, favoriteLanguage: "Swift")
johnDoe.work()
johnDoe.printSummary()
```
Employee is the parent class. Developer is the subclass of Employee. These are the keys point for the inheritance example
- Developer class automatically has properties and methods from Employee
- Since Developer has a new property, then Developer must define its own initializer, and inside the initializer must call `super.init()`
- Developer can override the superclass method by using `override` keywords like shown in the `printSummary`

## Deinitializer
Swift’s classes can optionally be given a deinitializer, which is a bit like the opposite of an initializer in that it gets called when the object is destroyed rather than when it’s created.
```swift
class User {
    var name: String
    
    init(name: String) {
        self.name = name
        print("User \(self.name) is created")
    }
    
    deinit {
        print("User \(self.name) is killed")
    }
}

var names = ["John", "Jane", "Mike"]
for i in 0...2 {
    let user = User(name: names[i])
    print("User \(user.name) is in control")
}
```
