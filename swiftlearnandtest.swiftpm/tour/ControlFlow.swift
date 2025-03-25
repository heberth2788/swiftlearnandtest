//
//  File.swift
//  swiftlearnandtest
//
//  Created by Heberth Deza on 25/03/25.
//

import Foundation

func testControlFlow() {
    
    let scores: [Int] = [10, 20, 30, 40, 50, 60]

    for score in scores { // loop with for
        print("The score: \(score)")
        
        if (score <= 30) {
            print("Low score")
        } else {
            print("Hight score")
        }
    }
    
    let vegetable: String = "red pepper"
    switch vegetable {
        case "celery":
            print("A celery stalk")
    case let x where x.hasPrefix("pepper"):
            print("It is a spacy \(x)")
        default:
            print("Another vegetable")
    }
    
    let someNums: [String: [Int]] = [ // declare a Dictionary(Key, value)
        "prime": [2, 3, 5, 7, 11, 13],
        "fibonacci": [1, 1, 2, 3, 5, 8],
        "square": [1, 4, 9, 16, 25, 36],
    ]
    for (kind, nums) in someNums { // 'for' to iterare the dictionary
        print(kind)
        for num in nums {
            print(num)
        }
    }
    for (_, nums) in someNums { // 'for' to iterate the dictionary and ignore the 'kind' with '_'(underscore)
        for num in nums {
            print(num)
        }
    }
    
    var total:Int = 0
    for i in 0..<6{ // loop with 'for' using a 'range'
        total += i
    }
    
    total = 0
    for i in 0...6 { // loop with 'for' using a 'range' including the values
        total += i
    }
    
    var n: Int = 2
    while(n < 12) { // loop with 'while'
        n *= 2
        print(n)
    }
    
    n = 2
    repeat { // loops with 'repeat/while'
        n *= 2
    } while n < 12
}

func testOptionalValue() {
    var optionalStr: String? = "Hello"
    print(optionalStr == nil) // prints false
    
    let optinalStr1: String?
    optinalStr1 = optionalStr
    
    if let myStr = optinalStr1 { // if 'optionalStr1' is not null, assign it to 'myStr'
        print("a. My str: \(myStr)")
    }
    
    if let myStr: String = optinalStr1 { // if 'optionalStr1' is not null, assign it to 'myStr'
        print("b. My str: \(myStr)")
    }
    
    let myNickName: String? = nil
    let myName: String = "Heberth Deza"
    let greeting: String = "Hello \(myNickName ?? myName)" // use operator '??' for default values if nil
    
    if let myNickName { // if 'myNickName' if not null
        print("Hello \(myNickName)")
    }
}
