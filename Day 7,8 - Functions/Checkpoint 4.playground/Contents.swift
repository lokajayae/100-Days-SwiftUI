
enum RootError: Error {
    case OutOfBounds, NotFound
}

func findSquareRoot (_ number: Int) throws -> Int {
    if number < 1 || number > 10000 { throw RootError.OutOfBounds }
    
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    
    throw RootError.NotFound
}

let number = 81
do {
    let result = try findSquareRoot(number)
    print("Square Root of \(number) is \(result)")
}
catch {
    print("Error Occured")
}
