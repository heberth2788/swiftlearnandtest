//
//  File.swift
//  swiftlearnandtest
//
//  Created by Heberth Deza on 20/03/25.
//

import Foundation

func testBasicOperators() {
    // assign a value: =
    let myName: String = "Heberth"
    var myAge: Int = 36
    myAge += 1 // compound assigment: +=, -=, *=, /=, %=
    
    // addition(+), substraction(-), multiplication(*), division(/) and reminder(%)
    var myNum: Int = 1988 + 1987
    myNum = myNum - 1987
    myNum = myNum * 3
    myNum = myNum / 3
    myNum = myNum % 3
    
    let myDouble: Double = Double(myNum) * 3.1416 // Parse Int to Double
}
