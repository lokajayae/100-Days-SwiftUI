import Cocoa

func printTimeTables(number: Int, end: Int){
    for i in 1...end {
        print("\(i) * \(number) = \(i * number)")
    }
}

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

print(rollDice())

func areLettersIdentical(a: String, b: String) -> Bool {
    return a.sorted() == b.sorted()
}

print(areLettersIdentical(a: "abc", b: "cba"))

func pythagoras(a: Double, b: Double) -> Double {
    return sqrt((pow(a, 2) + pow(b, 2)))
}

print(pythagoras(a: 3, b: 4))


func getUser() -> (firstName: String, lastName: String) {
    return (firstName: "James", lastName: "Liebert")
}

let user = getUser()
print("User: \(user.firstName) \(user.lastName)")

let user2 = getUser()
print("User: \(user2.0) \(user2.1)")

let (userFirstName, userLastName) = getUser()
print("User: \(userFirstName) \(userLastName)")

func isUppercase(string: String) -> Bool {
    return string == string.uppercased()
}

isUppercase(string: "HELLOW")

func isEven(for number: Int) -> Bool {
    return number%2 == 0
}

isEven(for: 10)
