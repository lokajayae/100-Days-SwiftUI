# Day 3 and 4: Conditions

## IF, IF ELSE, and ELSE
If, If else, and Else is one of branching mechanism that we can use in Swift. In this way one or no branch is executed. When else is used, the else branch will be the default, or the else branch will be executed if no branch fulfill the condition.
```swift
let score = 85

if score >= 85 {
    print("You did great")
}
else if score < 85 && score >= 60 {
    print("Could do better")
}
else {
    print("You are miserable")
}
```

## SWITCH - CASE
A switch statement allows you to compare a value against multiple possible matching patterns. It's often more efficient and readable than multiple if-else statements for complex conditions.
```swift
let forecast = Weather.sun

switch forecast {
case .sun:
    print("Have a nice day")
case .rain:
    print("Pack an umbrella")
case .windy:
    print("Watch your step")
case .heavy_rain:
    print("Better stay at home")
default:
    print("Unknown Weather")
}
```

## IF-ELSE vs SWITCH-CASE
Swift developers can use both switch and if to check multiple values in their code, and often there isn’t a hard reason why you should choose one rather than the other. That being said, there are three reasons why you might want to consider using switch rather than if:

- Swift requires that its switch statements are exhaustive, which means you must either have a case block for every possible value to check (e.g. all cases of an enum) or you must have a default case. This isn’t true for if and else if, so you might accidentally miss a case.
- When you use switch to check a value for multiple possible results, that value will only be read once, whereas if you use if it will be read multiple times. This becomes more important when you start using function calls, because some of these can be slow.
- Swift’s switch cases allow for advanced pattern matching that is unwieldy with if.

## TERNARY OPERATOR
The ternary operator in Swift is a concise way to write simple conditional statements. It's called "ternary" because it takes three operands
```swift
let age = 25
let canVote = age >= 18 ? true : false

if age >= 18 {
    let canVote = true
}
else {
    let canVote = false
}
```