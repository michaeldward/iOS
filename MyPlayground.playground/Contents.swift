//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var name = "brad"

switch name {
    case "brad":
        print("you win")
    case "other":
        print("no name")
        fallthrough
    default:
        print("default")
}


func doubleADouble(inputToDouble input: Double) -> Double {
    return input * 2
}

doubleADouble(inputToDouble: 4.5)

func doExponentWith(base: Double, power: Double) -> Double {
    return pow(base, power)
}

doExponentWith(2, power: 2)

func getDateTuple() -> (month: Int, date: Int, year: Int) {
    return (1, 18, 2017)
}

let (month, date, _) = getDateTuple()
print(month)


class Car {
    var make: String
    var model: String
    var year: Int
    var miles: Int
    
    init() {
        make = ""
        model = ""
        year = 0
        miles = 0
    }
    
    init(make: String, model: String, year: Int, miles: Int) {
        self.make = make
        self.model = model
        self.year = year
        self.miles = miles
    }
    
    func description() -> String {
        return "This car is a \(year) \(make) \(model) with \(miles) miles"
    }
    
}

extension Car { //adds on to the class, useful for when using multiple files
    func drive() {
        miles += 20
    }
}


var myCar = Car(make: "Subaru", model: "Crosstrek", year: 2016, miles: 3850)
print(myCar.description())
myCar.drive()
print(myCar.description())

// OPTIONALS

var optionalString: String?
optionalString
optionalString = "Test"
print(optionalString)
print(optionalString!)

if let myString = optionalString {
    print(myString)
}

var optionalCar: Car? // = Car()
optionalCar?.make = "Toyota"
optionalCar?.description()
//can either be none or a string


//CLOSURES

let countStringChars = { (test: String) -> Int in
    return test.characters.count
}
countStringChars("Test")

let events = (0..<10).filter { (value) -> Bool in
    return value % 2 == 0
}
let simplerEvens = (0..<10).filter {$0 % 2 == 0}
print(simplerEvens)

let unsortedArray = ["troy", "abed", "jeff", "britta"]
//let sortedArray = unsortedArray.sorted { $0 > $1 }
//sortedArray
//let reverseSortedArray = unsortedArray.sorted(by: <)
//reverseSortedArray

let π = 3.14159
π
let 🔫 = "revolver"
print(🔫)




