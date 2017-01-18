//
// Created by Michael Ward on 1/11/17.
// Copyright (c) 2017 ___FULLUSERNAME___. All rights reserved.
//

import Foundation



var myString = "Test"
myString.append(" appended")
myString += " test"
print(myString)

1 + 1
2/3
2.0/3.0
3*3

var opTest = 0
opTest += 1
opTest -= 2
//opTest++
-opTest
opTest
opTest > 0
opTest <= 2
opTest == -1

var intToStr: String = String(42)

var appendIntOntoStr: String = "3\(8)" + String(8)

var intArray = [Int]()

var anotherIntArray = [1, 3, 5]
anotherIntArray[0]
anotherIntArray.count
//anotherIntArray.

var numberLookup = [Int: String]()
numberLookup[0] = "Zero"
numberLookup[1] = "One"
numberLookup[0]
//numberLookup.keys

let tuple = (404, "Not found")
tuple.0
let arrayOfTuples = [tuple, tuple]
let namedTuple = (month: "January", year: "2017")
namedTuple.month
namedTuple.0

var numberString = ""
//0..5 is a range up to and including 5
for i in 0..<5 { //0..<5 is a range up to but not including 5
    numberString += i.description
}
numberString

for _ in 0..<10 {
    print("loop")
}

var classes = ["cs3200", "cs5410", "math2250"]
for myClass in classes {
    print(myClass)
}

for myTuple in arrayOfTuples {
    print(myTuple.0)
}

var counter = 2
while counter > 0 {
    counter -= 1
}
counter

repeat {
    counter += 1
} while counter < 2
counter

var time = "day"
if time == "day" {
    print("daytime")
} else {
    print("nighttime")
}

var name = "brad"

switch name { //switches automatically break, fallthrough will make it fall through
    case "brad":
        print("you win")
    default:
        print("no name")
        fallthrough
}

var genericDictionary = [String: Any]()
genericDictionary["int"] = 1
genericDictionary["bool"] = true
genericDictionary["bool"]

func getThree() -> Int {
    return 3
}
getThree()

func doubleADouble(input: Double) -> Double {
    return input * 2
}//parameters should be named

doubleADouble(input: 4.5) //must put names of parameters when the function is called

