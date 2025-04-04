//
//  File.swift
//  swiftlearnandtest
//
//  Created by Heberth Deza on 4/04/25.
//

import Foundation

protocol MyProtocol {
    
    var simpleDesc: String { get }
    
    // mutating means that this function will change the value of some property
    mutating func adjust() // mutating keywork impacts only in structs and extentions
}

class SimpleClass : MyProtocol {
    
    var simpleDesc: String = "Simple Class"
    var anotherProperty: Int = 1988
    
    func adjust() { // mutating keyword is not needed here
        simpleDesc += " adjusted"
    }
}

struct SimpleStruct : MyProtocol {
    
    var simpleDesc: String = "Simple Struct"
    var anotherProperty: Int = 1988
    
    mutating func adjust() { // mutating keyword is needed here
        simpleDesc += " adjusted"
    }
}

extension Int : MyProtocol {
    
    var simpleDesc: String {
        return "I'm the number \(self)"
    }
    
    mutating func adjust() { // mutating keyword is needed here
        self += 1
    }
}
