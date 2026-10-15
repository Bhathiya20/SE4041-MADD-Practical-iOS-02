// Exercise 02: Sets
// Module: SE4041 Mobile Application Design & Development

var towns: Set<String> = ["Malabe", "Kandy", "Galle"]
print(towns)

towns.insert("Jaffna")
towns.insert("Kandy")
print(towns)
print(towns.count)

print(towns.contains("Kandy"))
print(towns.contains("Colombo"))

towns.remove("Galle")
print(towns)

// Set Operations
let swiftClass: Set = ["Amal", "Nimali", "Ruwan"]
let kotlinClass: Set = ["Nimali", "Ruwan", "Sanduni"]

print(swiftClass.union(kotlinClass).sorted())
print(swiftClass.intersection(kotlinClass).sorted())
print(swiftClass.subtracting(kotlinClass).sorted())
print(swiftClass.symmetricDifference(kotlinClass).sorted())

// Activity 2: Student Sets
let mobileDevelopmentStudents: Set = ["Amal", "Nimali", "Ruwan", "Kasun"]
let gameTechnologyStudents: Set = ["Ruwan", "Sanduni", "Kasun", "Priyankara"]

print("All students: \(mobileDevelopmentStudents.union(gameTechnologyStudents))")
print("Both modules: \(mobileDevelopmentStudents.intersection(gameTechnologyStudents))")
print("Only Mobile Development: \(mobileDevelopmentStudents.subtracting(gameTechnologyStudents))")
print("Only one module: \(mobileDevelopmentStudents.symmetricDifference(gameTechnologyStudents))")
