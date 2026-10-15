// Exercise 01: Arrays
// Module: SE4041 Mobile Application Design & Development

var marks = [72, 65, 48, 90, 55]
print(marks)

// Accessing elements
print(marks[0])
print(marks[2])
print(marks[4])

// Useful properties
print(marks.count)
print(marks.isEmpty)
print(marks.first as Any)
print(marks.last as Any)

// Modifying an array
marks[2] = 52
print(marks)

marks.append(88)
marks.insert(60, at: 1)
print(marks)

marks.removeLast()
marks.remove(at: 1)
print(marks)

// Useful methods
let sampleMarks = [72, 65, 48, 90, 55]
print(sampleMarks.max()!)
print(sampleMarks.min()!)
print(sampleMarks.contains(90))
print(sampleMarks.sorted())
print(sampleMarks.sorted(by: >))

let total = sampleMarks.reduce(0, +)
print(total)

let average = Double(total) / Double(sampleMarks.count)
print(average)

// Activity 1: Modules Array
var modules = ["Mobile Application Design & Development", "Database Systems", "Software Engineering", "Computer Networks", "Web Development"]
print(modules)
print(modules.first!)
print(modules.last!)
modules.append("SE4041")
print(modules.count)
print(modules.contains("SE4041"))
