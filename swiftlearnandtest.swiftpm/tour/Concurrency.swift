//
//  File.swift
//  swiftlearnandtest
//
//  Created by Heberth Deza on 3/04/25.
//

import Foundation

func fetchUserId(from server: String) async -> Int {
    if server == "github.com" {
        return 3
    }
    return 6
}

func fetchUserName(from server: String) async -> String {
    let userId: Int = await fetchUserId(from: server)
    if userId == 3 {
        return "HD"
    } else if userId == 6{
        return "HJDV"
    }
    return "unknown"
}

func connectUser(from server: String) async {
    async let userId: Int = fetchUserId(from: server)
    async let userName: String = fetchUserName(from: server)
    
    let greeting: String = await "Hello, \(userName)! Your user ID is \(userId)."
    print(greeting)
}

func callAsyncFuncFromSyncCode() {
    Task {
        await connectUser(from: "github.com")
    }
}
