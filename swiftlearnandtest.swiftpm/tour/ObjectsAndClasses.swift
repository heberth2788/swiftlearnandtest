//
//  File.swift
//  swiftlearnandtest
//
//  Created by Heberth Deza on 27/03/25.
//

import Foundation

class Shape {
    
    var numOfSides: Int
    let name: String
    
    init(_ numOfSides: Int, _ name: String) {
        self.numOfSides = numOfSides
        self.name = name
    }
    
    func printDescription() {
        print("A shape with \(numOfSides) sides")
    }
    
    func sendMessage(_ msg: String) {
        print(msg)
    }
    
    
}
