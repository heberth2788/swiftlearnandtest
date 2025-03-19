//
//  MyConstantVariableDataType.swift
//  swiftlearnandtest
//
//  Created by Heberth Deza on 18/03/25.
//

import Foundation

// constants: use 'let' to declare inmutable variables
func testMyConstants() {
    let myName: String = "Heberth" // declare a constant with a value (literal value)
    print("Hello \(myName)!")
    
    let yourName: String // declare a constant that will have a value in the future
    yourName = "HD"
    print("Hello \(yourName)!")
    
    let myDouble: Double
    myDouble = 3.1416
}

// variables: use 'var' to declare mutable variables
func testMyVariables() {
    var myName: String = "Heberth"
    myName = "Heberth Deza"
    print("Hello \(myName)")
    
    let myAge: Int = 36
    var myCustomAge: Int = myAge // assign a constant to a variable
    myCustomAge = 37
    print("My age is = \(myCustomAge)")
    
    let yourAge: Int = myCustomAge // assign a variable to a constant
    print("your age is = \(yourAge)")
}

/*
    A comment with
    multiple lines
 */

// A comment with just one line

// data types: Int, Double, Bool, String
func testMyDatatypes() {
    // integer numbers
    let myInt: Int = 369
    let myUInt: UInt = 369
    
    // signed integer numbers
    let myInt8: Int8 = 12
    let myInt16: Int16 = 12
    let myInt32: Int32 = 12
    let myInt64: Int64 = 12
    
    // unsigned integer numbers
    let myUInt8: UInt8 = 12
    let myUInt16: UInt16 = 12
    let myUInt32: UInt32 = 12
    let myUInt64: UInt64 = 12
    
    // integer literals
    let myBinary: Int = 0b10001 // 17 in binary notation
    let myOctal: Int = 0o21 //17 in octal notation
    let myHexadecimal: Int = 0x11 // 17 in hexadecimal notation
    
    // floating-point numbers
    let myDouble: Double = 369.369
    let myFloat: Float = 369.369
    
    //floating-point literals
    let exponentDouble: Double = 1.21875e1 // 12.1875 in exponent notation
    let hexadecimalDouble: Double = 0xC.3p0 // 12.1875 in hexadecimal notation
    
    // boolean
    let myBool: Bool = true
    
    // string and string interpolation
    var myStr: String = "HD"
    let yearsOld: Int = 36
    myStr = "My name is \(myStr), and I'm \(yearsOld) years old" // String interpolation
}

/*
    Define my own type with struct
 */
struct Person {
    let firstName: String
    let lastName: String
    
    func sayhello() {
        print("Hello \(firstName) \(lastName)!")
    }
    
    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
    
    func fullNameWithComma() -> String { "\(firstName) , \(lastName)" }
    
    func fullNameWithDot() -> String {
        "\(firstName) . \(lastName)"
    }
}

func useMyStruct() {
    let me = Person(firstName: "Heberth", lastName: "Deza")
    me.sayhello()
    
    var pivot: String = ""
    pivot = me.fullName()
    pivot = me.fullNameWithComma()
    pivot = me.fullNameWithDot()
    print(pivot)
}

/*
    Use of array, dictionary and set
 */
func myArrayDictionarySet() {
    // Ways to define an array
    var myArray0: Array = [1, 2, 3, 4, 5, 6]
    let myArray1: [Int] = [1, 2, 3, 4, 5, 6]
    let myArray2: Array<Int> = [1, 2, 3, 4, 5, 6]
    let myArray3 = Array(repeating: 3, count: 6) // [3, 3, 3, 3, 3, 3]
    
    // Array methods
    myArray0.append(7)
    myArray0.insert(0, at: 0)
    myArray0.remove(at: 2)
    myArray0.removeLast()
    myArray0.removeFirst()
    myArray0.removeAll()
    myArray0.count
    myArray0.first
    myArray0.last
    
    // iterating over an array
    for item in myArray0 {
        print(item)
    }
    
    // Ways to define a dictionary
    let myDictionary0: [String: Int] = ["apple": 3, "banana": 6, "blueberry": 9]
    var myDictionary1: [String: Int] = [:]
    myDictionary1["apple"] = 3
    myDictionary1["banana"] = 6
    myDictionary1["blueberry"] = 9
    
    // Dictionary methods
    myDictionary0["apple"]
    myDictionary0.keys
    myDictionary0.values
    myDictionary0.count
    myDictionary1.removeValue(forKey: "apple")
    myDictionary1.removeAll()
    
    // iterating over an dictionary
    for (key, value) in myDictionary0 {
        print("\(key) : \(value)")
    }
    
    // Ways to define a set
    let mySet0: Set<Int> = [1, 2, 3, 4, 5, 6]
    var mySet1: Set<Int> = []
    mySet1.insert(1)
    mySet1.insert(2)
    mySet1.insert(3)
    mySet1.insert(4)
    mySet1.insert(5)
    mySet1.insert(6)
    
    // Set methods
    mySet0.count
    mySet0.contains(1)
    mySet1.remove(1)
    mySet1.removeAll()
    
    // iterating over a set
    for item in mySet0 {
        print(item)
    }
}
