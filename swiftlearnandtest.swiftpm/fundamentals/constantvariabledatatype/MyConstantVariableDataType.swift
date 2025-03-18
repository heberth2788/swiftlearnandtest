//
//  MyConstantVariableDataType.swift
//  swiftlearnandtest
//
//  Created by Heberth Deza on 18/03/25.
//

import Foundation

// constants: use 'let' to declare inmutable variables
func testMyConstants() {
    let myName: String = "Heberth"
    print("Hello \(myName)!")
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
    
    let myBool: Bool = true
    let myStr: String = "HD"
}
