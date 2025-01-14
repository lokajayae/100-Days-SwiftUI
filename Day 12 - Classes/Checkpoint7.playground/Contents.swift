class Animal {
    var numberOfLegs: Int
    
    init(numberOfLegs: Int) {
        self.numberOfLegs = numberOfLegs
    }
}

class Dog: Animal {
    func speak() {
        print("This dog is barking, woof woof")
    }
}

class Corgi: Dog {
    override func speak() {
        print("This corgi is barking while running, woof woof")
    }
}

class Poodle: Dog {
    override func speak() {
        print("This poodle is barking, wang wang")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(numberOfLegs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(numberOfLegs: numberOfLegs)
    }
    
    func speak(){
        print("Cat is purring")
    }
}

class Persian: Cat {
    override func speak() {
        print("Meoww")
    }
}

class Lion: Cat {
    override func speak() {
        print("Grrrrrr")
    }
}
