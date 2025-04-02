//
//  File.swift
//  swiftlearnandtest
//
//  Created by Heberth Deza on 2/04/25.
//

import Foundation

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDesc() -> String {
        switch self {
            case .ace:
                return "Ace"
            case .jack:
                return "Jack"
            case .queen:
                return "Queen"
            case .king:
                return "King"
            default:
                return String(self.rawValue)
        }
    }
}

enum ServerResponse {
    case result(_ msg: String, _ code: String)
    case failure(_ msg: String)
}

func testMyEnum() {
    let ace1: Rank = .ace
    let ace2 = Rank.ace

    var aceRawValue: Int = ace1.rawValue
    aceRawValue = ace2.rawValue
    
    print(aceRawValue)
    
    if let ace3 = Rank(rawValue: 1) {
        let desc: String = ace3.simpleDesc()
        print(desc)
    }
    
    let mySuccess: ServerResponse = .result("Hello", "200")
    let myFailure: ServerResponse = .failure("Bad request")
    
    switch mySuccess {
        case let .result(value1, value2):
            print("Success: \(value1), \(value2)")
        case let .failure(value):
            print("Failure: \(value)")
    }
}

struct Card {
    var rank: Rank
    
    func simpleDesc() -> String {
        return "The rank is \(rank)"
    }
}

func testMyStruct() {
    var myCard: Card = Card(rank: .ace)
    print(myCard.simpleDesc())
}
