// Exercise 03: Dictionaries
// Module: SE4041 Mobile Application Design & Development

var marksDict = [
    "Amal": 72,
    "Nimali": 65,
    "Ruwan": 48
]
print(marksDict)

// Retrieve value (returns optional)
print(marksDict["Amal"] as Any)

// Safely retrieve with nil-coalescing
print(marksDict["Amal"] ?? 0)
print(marksDict["Kasun"] ?? 0)

// Optional binding
if let mark = marksDict["Nimali"] {
    print("Nimali scored \(mark)")
} else {
    print("Student not found")
}

// Add, Update, Remove
marksDict["Sanduni"] = 90
marksDict["Amal"] = 75
marksDict["Ruwan"] = nil
print(marksDict)

// Activity 3: Phone Book
var phoneBook = [
    "Amal": "0711234567",
    "Nimali": "0779876543",
    "Ruwan": "0751112233",
    "Sanduni": "0784445566"
]

phoneBook["Kasun"] = "0709998877"
phoneBook["Amal"] = "0723334455"
phoneBook["Ruwan"] = nil

let searchName = "Nimali"
if let number = phoneBook[searchName] {
    print("\(searchName)'s number is \(number)")
} else {
    print("Contact not found")
}
