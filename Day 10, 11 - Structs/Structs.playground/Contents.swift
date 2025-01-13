
struct Album {
    let title: String;
    let year: String;
    let artist: String;
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", year: "2015", artist: "Taylor Swift");
red.printSummary();


struct Employee {
    let name: String;
    var leaveAllocaton: Int = 14
    var leaveTaken: Int = 0
    
    var leaveRemaining: Int {
        get {
            return leaveAllocaton - leaveTaken
        }
        set {
            return leaveAllocaton += newValue
        }
        
    }
    
    mutating func takeVacation(days: Int) {
        if leaveRemaining >= days {
            leaveTaken += days;
            print("\(name) is taking vacation for \(String(days)) days");
            print("\(name) remaining leave(s) is \(String(leaveRemaining))");
        }
        else {
            print("Wrong!");
        }
    }
}



var archer = Employee(name: "Tony Archer");
archer.takeVacation(days: 2);

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")


struct BankAccount {
    private var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

struct Student {
    let username: String
    let password: String

    static let example = Student(username: "cfederighi", password: "hairforceone")
}
