// BOOLEAN

var goodDogs = true

goodDogs = !goodDogs
print(goodDogs)

goodDogs.toggle()
print(goodDogs)


// String Interpolation
let firstPart = "Hello"
let secondPart = " World"
let hellowWorld = firstPart + secondPart
print(hellowWorld)

let heroName = "Deku"
let quirk = "One for All"
let statement = "Izuku Midoriya or known as \(heroName) has a quirk called \(quirk)"
print(statement)
