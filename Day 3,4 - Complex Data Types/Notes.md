# Day 3 and 4: Complex Data Types

## Array
Array is used to store multiple data with the same value in one place. To access element of the array we can use index, number which start from zero. To add new item to the array we can use built-in function append()

```swift
var heroes = ["Iron Man", "The Hulk", "Thor", "Spider-Man"]

print(heroes[0]) // This should print "Iron Man"
heroes.append("Captain America")
```

We can initialize array with its primitive types using angle bracket as shown below. 

```swift
var grades = Array<Int>()
grades.append(90)
grades.append(82)
```

Or the easiest or cleanest way is to define the primitive types in square bracket.

```swift
var grades = [Int]()
grades.append(90)
grades.append(82)
```

Array has many built in function or properties like count, remove, contains, sorted, reverse and many more.

```swift
grades.count
grades.remove(at: 2)
grades.removeAll()
grades.contains(2)
grades.reversed()
```

## Dictionary
Dictionary is used to store data with multiple data types, and can be accessed with key. Below is the example of definition of dictionary and how to access the value using key. Data in dictionary might be there and might be not (Optionals), thats why its wise to set the default in case the key accessed is not there.
```swift
var captainAmerica = [
    "heroName" : "Captain America",
    "gender" : "Male",
    "location" : "Brooklyn"
]
print(captainAmerica["heroName", default: "Unknown"])
```
To initialize a dictionary we can use square bracket and then define the data types for the key and value. Below is declared dictionary called olympics which store the year as the key and has values of its location.
```swift
var olympics = [Int: String]()
olympics[2012] = "London"
olympics[2016] =  "Rio de Janeiro"
```

## Sets
Sets is an array that store unique data, and will be ordered automatically to make data retrival faster/
```swift
var actors = Set<String>()
actors.insert("Denzel Washington")
actors.insert("Chris Hemsworth")
```

## Enums
Enums or enumerations doest have meaning in swift but they are efficient and safer to work. 
```swift
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.friday
```