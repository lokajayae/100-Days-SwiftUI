let luckyNumber = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

var result = luckyNumber
    .filter { (number: Int) -> Bool in
        return number % 2 != 0
    }
    .sorted { $0 < $1}
    .map { (number: Int) -> String in
        return "\(number) is a Lucky Number"
    }

for item in result {
    print(item)
}
