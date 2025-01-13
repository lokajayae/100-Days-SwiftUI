# Struct

## Definition
 Struct is a data type that allows you to encapsulate related properties and behaviors into a single custom type.

 ```swift
struct Album {
    let title: String;
    let year: String;
    let artist: String;
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}
 ````

 ```swift
let red = Album(title: "Red", year: "2015", artist: "Taylor Swift");
 ````

 Album is the struct name. Title, year, and artist is the struct properties. PrintSummary is the struct method. Red is an instance of struct Album and instance is created using initializer.

## Mutating Method
Struct is treated as a constant. SO if you have a method that will change the value of the properties, you will need to add `mutating` keyword to the function. 
```swift
struct Employee {
    let name: String;
    var leaveRemaining: Int;
    
    mutating func takeVacation(days: Int) {
        if leaveRemaining >= days {
            leaveRemaining -= days;
            print("\(name) is taking vacation for \(String(days)) days");
            print("\(name) remaining leave(s) is \(String(leaveRemaining))");
        }
        else {
            print("Wrong!");
        }
    }
}
```

## Dynamic Properties
In dynamic function there is two mechanism which is get and set. LeaveRemaining is the dynamic or computed property, its value is never stored but calculated. And when you assign value to the property it will run the function-like block of code instead of store the value.
```swift
struct Employee {
    let name: String;
    var leaveAllocaton: Int = 14
    var leaveTaken: Int = 0
    
    var leaveRemaining: Int {
        get {
            leaveAllocaton - leaveTaken
        }
        set {
            leaveAllocaton += newValue
        }
        
    }
}
```

## Property Observer
There is two kind of property observer `willSet` and `didSet`. `willSet` will be executed when the property is about to change, and `didSet` will be executed right after the value is changed. You can access the new value at `willSet` using `newValue` and you can get the old value at `didSet` using `oldValue`.

```swift
struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")
```

## Custom Initializers
The example shown below is defining an initializer without passing the value for number property, because number will be randomized. Remember the golden rule: all properties must have a value by the time the initializer ends. If we had not provided a value for number inside the initializer, Swift would refuse to build our code.
```swift
struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player.number)
```

## Access Control
```swift
struct BankAccount {
    var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}
```
```swift
var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}
```
The problem with this code is that we can modify funds from anywhere, we can simply do `account.funds = 1000`. To solve that problem we can add `private` keywords for funds.

```swift
private var funds = 0 // Only struct can access 
fileprivate var name = "John Doe" // same file access
public var branch = "Bandung" // public
var manager = "Jane Doe" // public
```

## Static Properties and Method
```swift
struct Student {
    let username: String
    let password: String

    static let example = Student(username: "cfederighi", password: "hairforceone")
}
```
Well, sometimes you want to add a property or method to the struct itself, rather than to one particular instance of the struct, which allows you to use them directly. I use this technique a lot with SwiftUI for two things: creating example data, and storing fixed data that needs to be accessed in various places.