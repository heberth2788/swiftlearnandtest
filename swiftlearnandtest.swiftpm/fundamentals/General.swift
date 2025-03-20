//
//  File.swift
//  swiftlearnandtest
//
//  Created by Heberth Deza on 20/03/25.
//

import Foundation

func removeDuplicatedCharacters(from inputString: String) -> String {
    var uniqueChars: Set<Character> = []
    
    for char in inputString {
        uniqueChars.insert(char)
    }
    
    return String(uniqueChars)
}

func testGeneral() {
    let str: String = "Deeprayd"
    print(removeDuplicatedCharacters(from: str.lowercased()))
}
