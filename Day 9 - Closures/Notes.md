# Closures

## Definition
Closures in Swift are self-contained blocks of functionality that can be passed around and used in your code. They're similar to anonymous functions in other programming languages.

## Closure Expression
Below example is the closure expression passed to the sorted function
```swift
let sortedTeamCapt = teams.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Oky" {
        return true
    }
    else if name2 == "Oky" {
        return false
    }
    
    return name1 < name2

})
```

## Trailing Closure
In the case above, closure for the sorted function, the closure must take 2 String and return a Bool. In that case, we can use Trailing Clousre to make the code less clutter.
```swift
let sortedTeamCaptTrailing = teams.sorted { name1, name2 in
    if name1 == "Oky" {
        return true
    }
    else if name2 == "Oky" {
        return false
    }
    
    return name1 < name2
    print(sortedTeamCaptTrailing)
}
```
## Shorthand Syntax
Shorthand syntax can be used to make the closure less clutter even more. The idea is to replace the parameter with $0, $1, and go on based on how many parameters does the closure take.
```swift
let sortedTeamCaptShorthand = teams.sorted {
    if $0 == "Oky" {
        return true
    }
    else if $1 == "Oky" {
        return false
    }
    
    return $0 < $1

}
print(sortedTeamCaptShorthand)
```

## Accept Function as Parameter
```swift
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var result = [Int]()
    
    for _ in 1...size {
        result.append(generator())
    }
    
    return result
}

let randomClosure = { () -> Int in
    return Int.random(in: 0...9)
}

let onlyOneClosure = { () -> Int in
    return 1
}

print(makeArray(size: 10, using: randomClosure))
print(makeArray(size: 10, using: onlyOneClosure))

```
```swift
func doSomething(firstWork: () -> Void, secondWork: () -> Void) {
    firstWork()
    secondWork()
}
```