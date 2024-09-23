let platforms = ["iOS", "watchOS", "ipadOS", "macOS", "tvOS"]

for platform in platforms {
    print("Swift works great in \(platform)")
}

for i in 1...12 {
    print(i)
}

for i in 1..<5 {
    print(i)
}

for i in 1...5 {
    print("YOU SHALL NOT PASS")
}

var countdown = 10
while countdown > 0 {
    print(countdown)
    countdown -= 1
}

var rolled = 0
while rolled != 10 {
    rolled = Int.random(in: 1...10)
    print("I rolled \(rolled)")
}
