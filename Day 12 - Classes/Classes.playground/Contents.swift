class Employee {
    var name: String
    var hours: Int
    
    init(name: String, hours: Int) {
        self.name = name
        self.hours = hours
    }
    
    func printSummary(){
        print("I work \(self.hours) hours a day")
    }
}

class Developer: Employee {
    var favoriteLanguage: String
    
    init(name: String, hours: Int, favoriteLanguage: String) {
        self.favoriteLanguage = favoriteLanguage
        super.init(name: name, hours: hours)
    }
    
    func work(){
        print("Developer \(self.name) working for \(self.hours) hours")
    }
    
    override func printSummary() {
        print("I write codes \(self.hours) hours a day")
    }
}

var johnDoe = Developer(name: "John Doe", hours: 12, favoriteLanguage: "Swift")
johnDoe.work()
johnDoe.printSummary()

class User {
    var name: String
    
    init(name: String) {
        self.name = name
        print("User \(self.name) is created")
    }
    
    deinit {
        print("User \(self.name) is killed")
    }
}

var names = ["John", "Jane", "Mike"]
for i in 0...2 {
    let user = User(name: names[i])
    print("User \(user.name) is in control")
}
