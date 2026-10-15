// Final Practical Task: Student Performance Manager
// Module: SE4041 Mobile Application Design & Development

// Part A: Store Student Marks
var studentMarks: [String: Int] = [
    "Amal": 72,
    "Nimali": 45,
    "Ruwan": 68,
    "Sanduni": 90,
    "Kasun": 38
]

// Part B & C: Display All Students and Determine Grade
print("STUDENT PERFORMANCE")
var passedStudents: [String] = []
var gradesAwarded = Set<String>()
var totalMarks = 0

for (name, mark) in studentMarks.sorted(by: { $0.key < $1.key }) {
    totalMarks += mark
    
    // Determine grade using switch and ranges
    let grade: String
    switch mark {
    case 80...100:
        grade = "A"
    case 75..<80:
        grade = "A-"
    case 70..<75:
        grade = "B+"
    case 65..<70:
        grade = "B"
    case 60..<65:
        grade = "B-"
    case 55..<60:
        grade = "C+"
    case 45..<55:
        grade = "C"
    case 40..<45:
        grade = "C-"
    default:
        grade = "F"
    }
    
    gradesAwarded.insert(grade)
    print("\(name) - \(mark) - \(grade)")
    
    // Part D: Check if passed (> 50)
    if mark > 50 {
        passedStudents.append(name)
    }
}

// Display Passed Students
print("\nPassed Students:")
for student in passedStudents {
    print(student)
}

// Display Unique Grades Awarded
print("\nGrades Awarded:")
print(gradesAwarded.sorted())

// Part F: Average Mark
let classAverage = Double(totalMarks) / Double(studentMarks.count)
print("\nClass Average: \(classAverage)")

// Part G: Highest and Lowest Marks
if let highest = studentMarks.values.max(), let lowest = studentMarks.values.min() {
    print("Highest Mark: \(highest)")
    print("Lowest Mark: \(lowest)")
}

// Additional Challenge
let searchStudent = "Amal"
if let mark = studentMarks[searchStudent] {
    print("\n\(searchStudent)'s mark is \(mark)")
} else {
    print("\nStudent not found.")
}

var passCount = 0
var failCount = 0
for mark in studentMarks.values {
    if mark >= 50 {
        passCount += 1
    } else {
        failCount += 1
    }
}
print("Passed: \(passCount)")
print("Failed: \(failCount)")
