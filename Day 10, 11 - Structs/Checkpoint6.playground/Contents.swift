struct Car {
    let model: String
    let numberOfSeat: Int
    private var gear: Int = 0
    
    init(model: String, numberOfSeat: Int) {
        self.model = model
        self.numberOfSeat = numberOfSeat
    }
    
    mutating func shiftGear(to gear: Int) {
        if gear < -1 || gear > 10 {
            print("Gear is not valid")
        }
        else {
            self.gear = gear
            print("Success change gear to \(self.gear)")
        }
    }
}

var mazda = Car(model: "RX", numberOfSeat: 4)
mazda.shiftGear(to: 1)
mazda.shiftGear(to: 2)
mazda.shiftGear(to: 3)
