// Exercise 06: Loops
// Module: SE4041 Mobile Application Design & Development

// Part A: for-in loop
for i in 1...5 {
    print("Week \(i)")
}

let names = ["Amal", "Nimali", "Ruwan"]
for name in names {
    print(name)
}

// Using enumerated()
for (index, name) in names.enumerated() {
    print("\(index): \(name)")
}

// Part B: while loop
var balance = 1000
var week = 0
while balance > 0 {
    balance -= 300
    week += 1
}
print("Ran out in week \(week)")

// Part C: repeat-while loop
var attempts = 0
repeat {
    attempts += 1
    print("Attempt \(attempts)")
} while attempts < 3

// break and continue
let marksList = [72, -1, 65, 48, 90]
for m in marksList {
    if m < 0 {
        continue
    }
    if m == 90 {
        break
    }
    print(m)
}

// Activity 6: Filter and process marks
let marksActivity = [72, -1, 55, 43, 90, 88]
for m in marksActivity {
    if m < 0 {
        continue
    }
    if m == 90 {
        break
    }
    print(m)
}
