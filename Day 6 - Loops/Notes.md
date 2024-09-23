# Day 6: Loops

## FOR LOOP
```swift
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
```

## RANGE
```swift
1...5 //1, 2, 3, 4, 5
1..>5 //1, 2, 3, 4
```

## WHILE LOOP
```swift
var rolled = 0
while rolled != 10 {
    rolled = Int.random(in: 1...10)
    print("I rolled \(rolled)")
}
```

## CONTINUE AND BREAK
With continue, swift will stop current iteration and then proceed to the next iteration. Meanwhile break will terminate or stop the whole loops.