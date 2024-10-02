let teams = ["Gloria", "Johan", "Yoko", "Kevin", "Oky"]
let sortedTeams = teams.sorted()
print(sortedTeams)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Oky" {
        return true
    }
    else if name2 == "Oky" {
        return false
    }
    
    return name1 < name2
}

//let sortedTeamCapt = teams.sorted(by: captainFirstSorted)
let sortedTeamCapt = teams.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Oky" {
        return true
    }
    else if name2 == "Oky" {
        return false
    }
    
    return name1 < name2

})
print(sortedTeamCapt)


let sortedTeamCaptTrailing = teams.sorted { name1, name2 in
    if name1 == "Oky" {
        return true
    }
    else if name2 == "Oky" {
        return false
    }
    
    return name1 < name2

}
print(sortedTeamCaptTrailing)

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


func doSomething(firstWork: () -> Void, secondWork: () -> Void) {
    firstWork()
    secondWork()
}
