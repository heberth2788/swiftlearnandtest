//
//  File.swift
//  swiftlearnandtest
//
//  Created by Heberth Deza on 24/03/25.
//

import Foundation

func showVarLet() {
    var myVar: Int = 1988
    myVar = 1987
    myVar = 1986
    
    let myLet: Int
    myLet = 1988
    
    print("showVarLet: \(myVar), \(myLet)")
    
    let quotation: String = """
        This is an example
        of using tree quotation 
        marks for strings
    """
    print(quotation)
    
    let myArray1: [Int] = [1, 2, 3, 4, 5, 6]
    let myArray2 = [1, 2, 3, 4, 5, 6]
    let myArray3: [Int] = []
    
    let myDictionary1: [Int: String] = [1: "one", 2: "two", 3: "three"]
    let myDictionary2 = [1: "one", 2: "two", 3: "three"]
    let myDictionary3: [Int: String] = [:]
    
    let mySet1: Set<Int> = [1, 2, 3, 4, 5, 6]
    let mySet2: Set<Int> = []
}
