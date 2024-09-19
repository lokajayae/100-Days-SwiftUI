// IF, ELIF, and ELSE
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

// SWITCH-CASE
enum Weather {
    case sun, rain, windy, heavy_rain, unknown
}

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

// TERNARY
let age = 25
let canVote = age >= 18 ? true : false

if age >= 18 {
    let canVote = true
}
else {
    let canVote = false
}
