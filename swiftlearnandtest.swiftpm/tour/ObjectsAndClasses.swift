//
//  File.swift
//  swiftlearnandtest
//
//  Created by Heberth Deza on 27/03/25.
//

import Foundation

class Shape {
    
    var numOfSides: Int = 0
    let name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    func printDescription() {
        print("A shape with \(numOfSides) sides")
    }
    
    func sendMessage(_ msg: String) {
        print(msg)
    }
}

class Square : Shape {
    
    var sideLength: Double
    
    init(_ name: String = "Square", sideLength: Double) {
        self.sideLength = sideLength
        super.init(name)
        numOfSides = 4
    }
    
    override func printDescription() {
        print("I am a square with \(numOfSides) sides")
    }
}

class EquilateralTriangle : Shape {
    
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name)
        numOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func printDescription() {
        print("I am an equilateral triangle with \(numOfSides) sides")
    }
}

class TriangleAndSquare {
    
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        square = Square(name, sideLength: size)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
    
    func workingWithOptionalValues() {
        let optSquare: Square? = nil
        let myLength: Double? = optSquare?.sideLength
    }
}
