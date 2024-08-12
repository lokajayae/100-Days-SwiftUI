# Day 2: Simple Data Types

## Boolean
Boolean is used to store truth, so its either true or false. Exclamation mark (read as not) is one of boolean operator. There is built-in function called toggle that behave the same as !.
```swift
var goodDogs = true //true
goodDogs = !goodDogs //false
goodDogs.toggle() //true
```

## String Interpolation
There are case when we want to combine one or more String or maybe String with other data type like boolean, integer, or double. We can achieve that using the addition operation, but its slow and mroe variable means much much slower. So it is wise to use String interpolation with backslash inside parantheses.

```swift
// String Interpolation
let firstPart = "Hello"
let secondPart = " World"
let hellowWorld = firstPart + secondPart
print(hellowWorld)

let heroName = "Deku"
let quirk = "One for All"
let statement = "Izuku Midoriya or known as \(heroName) has a quirk called \(quirk)"
print(statement)
```