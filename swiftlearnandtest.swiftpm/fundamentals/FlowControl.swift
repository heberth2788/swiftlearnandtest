//
//  File.swift
//  swiftlearnandtest
//
//  Created by Heberth Deza on 20/03/25.
//

import Foundation

func testMyFlowControl() {
    // if
    let temp: Double = 100
    if temp >= 100 {
        print("water is boiling")
    }
    
    // if/else
    if temp >= 100 {
        print("water is boiling")
    } else {
        print("water is NOT boiling")
    }
    
    // if/else if/else
    var myPosition: Int = 1
    if myPosition == 1 {
        print("golden")
    } else if myPosition == 2 {
        print("silver")
    } else {
        print("nothing")
    }
    
    // assigning a boolean
    let isSmallNum: Bool = myPosition <= 100
    
    // not logic: !X
    if !isSmallNum {
        print("\(isSmallNum) NOT is a small number")
    }
    
    // and logic: X && Y
    if temp >= 65 && temp <= 75 {
        print("good temperature")
    }
    
    // or logic: X || Y
    if myPosition == 1 || myPosition == 2 {
        print("you have a medal")
    }
    
    // switch
    let numOfWheels: Int = 2
    switch numOfWheels {
        case 0:
            print("no wheels")
        
        case 1:
            print("monocycle")
        
        case 2:
            print("bicycle")
        
        case 3:
            print("tricycle")
        
        case 4, 6, 8: // many conditions at the time
            print("car")
        
        case 9...100: // many conditions at the time using an interval
            print("unkdown")
        
        default:
            print("\(numOfWheels) wheels")
    }
    
    // ternary operator: X ? Y : Z
    let a: Int  = 1988
    let b: Int = 1987
    let largest: Int = a > b ? a : b
    
    
}
