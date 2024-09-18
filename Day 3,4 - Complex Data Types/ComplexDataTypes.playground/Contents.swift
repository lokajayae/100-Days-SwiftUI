// ARRAY
var heroes = ["Iron Man", "The Hulk", "Thor", "Spider-Man"]
print(heroes[0]) // This should print "Iron Man"
heroes.append("Captain America")
print(heroes)


var grades = Array<Int>()
grades.append(90)
grades.append(82)


grades.count
grades.remove(at: 1)
grades.removeAll()
grades.contains(2)
grades.reversed()


// DICTIONARY
var captainAmerica = [
    "heroName" : "Captain America",
    "gender" : "Male",
    "location" : "Brooklyn"
]
print(captainAmerica["heroName", default: "Unknown"])

var olympics = [Int: String]()
olympics[2012] = "London"
olympics[2016] =  "Rio de Janeiro"

// SETS
var actors = Set<String>()
actors.insert("Denzel Washington")
actors.insert("Chris Hemsworth")
actors.insert("Micheal Keaton")
actors.insert("Robert de Niro")
print(actors)
actors.sorted()
print(actors)

// ENUMS
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.friday

// TYPE ANNOTATION
var luckyNumber: Int = 37
var players: [String] = ["John", "Raymond", "Samuel"]

enum screenType {
    case potrait
    case landscape
}
var screen: screenType = screenType.landscape
screen = .potrait

var username:String
// lots of complex logic
username = "lockjaw"
// more logic
