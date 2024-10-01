# Day 7,9 - Functions

## Definition
Functions in Swift are self-contained blocks of code that perform a specific task. They are fundamental building blocks in Swift programming, allowing you to organize your code into reusable, modular pieces.
```swift
func rollDice() -> Int {
    return Int.random(in: 1...6)
}
```

## Parameter
Parameters are inputs that you can pass to a function. They allow functions to work with external data, making them more flexible and reusable
```swift
func printTimeTables(number: Int, end: Int){
    for i in 1...end {
        print("\(i) * \(number) = \(i * number)")
    }
}
```

## Return Value
Return values are the output of a function - the data it sends back after performing its task
```swift
func pythagoras(a: Double, b: Double) -> Double {
    return sqrt((pow(a, 2) + pow(b, 2)))
}
```

## Return Multiple Value
The best way to return multiple value in swift is to use tuple.
``` swift
func getUser() -> (firstName: String, lastName: String) {
    return (firstName: "James", lastName: "Liebert")
}

let user = getUser()
print("User: \(user.firstName) \(user.lastName)")

let user2 = getUser()
print("User: \(user2.0) \(user2.1)")

let (userFirstName, userLastName) = getUser()
print("User: \(userFirstName) \(userLastName)")
```

## Customize Parameter
In swift, we can determine the internal label and external label.
`func functionName(ext_label int_label: Int)`
```swift
func isUppercase(string: String) -> Bool {
    return string == string.uppercased()
}

isUppercase(string: "HELLOW")

func isEven(for number: Int) -> Bool {
    return number%2 == 0
}

isEven(for: 10)
```

## Default Value for Parameter
Default parameters let us make functions easier to call by letting us provide common defaults for parameters. So, when we want to call that function using those default values we can just ignore the parameters entirely – as if they didn’t exist – and our function will just do the right thing. Of course, when we want something custom it’s there for us to change.
```swift
func printTimeTablesV2(number: Int, end: Int = 10){
    for i in 1...end {
        print("\(i) * \(number) = \(i * number)")
    }
}

printTimeTablesV2(number: 10)
printTimeTables(number: 10, end: 12)
```

## Error Handling
```swift
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count <= 5 { throw PasswordError.short }
    if password == "12345" { throw PasswordError.obvious }
    
    if password.count > 5 && password.count <= 8 {
        return "Good"
    }
    else if password.count > 8 && password.count <= 12 {
        return "Great"
    }
    else {
        return "Excellent"
    }
}

let password = "12345"

do {
    let result = try checkPassword(password)
    print("Password Rating: \(result)")
}
catch PasswordError.obvious {
    print("Password too obvious")
}
catch PasswordError.short {
    print("Password too short")
}
catch {
    "Unknown error occured"
}
```

