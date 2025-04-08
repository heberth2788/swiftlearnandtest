//
//  File.swift
//  swiftlearnandtest
//
//  Created by Heberth Deza on 8/04/25.
//

import Foundation

func makeArray<Item>(repeating item: Item, numberOfTimes count: Int) -> [Item] {
    var result: [Item] = []
    for _ in 0..<count {
        result.append(item)
    }
    return result
}

func testGenerics() {
    let myIntArray: [Int] = makeArray(repeating: 1988, numberOfTimes: 12)
    let myCharArrat: [Character] = makeArray(repeating: "H", numberOfTimes: 9)
}

enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}

func anyCommonElementsA<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
where T.Element: Equatable, T.Element == U.Element {
        
    for lhsElement in lhs {
        for rhsElement in rhs {
            if lhsElement == rhsElement {
                return true
            }
        }
    }
    return false
}

func anyCommonElementB<T, U>(_ lhs: T, _ rhs: U) -> Bool
where T: Sequence, U: Sequence, T.Element: Equatable, T.Element == U.Element {
    for lhsElement in lhs {
        for rhsElement in rhs {
            if lhsElement == rhsElement {
                return true
            }
        }
    }
    return false
}
