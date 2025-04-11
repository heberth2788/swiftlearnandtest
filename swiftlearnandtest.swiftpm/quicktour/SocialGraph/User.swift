//
//  File.swift
//  MySocialGraph
//
//  Created by Heberth Deza on 10/04/25.
//

import Foundation

public struct User: Equatable, Hashable {
    
    public let username: String
    public var isVisible: Bool
    public private(set) var friends: [String]
    
    public init(
        username: String,
        isVisible: Bool = true,
        friends: [String] = [],
    ) {
        self.username = username
        self.isVisible = isVisible
        self.friends = friends
    }
    
    public mutating func addFriend(_ username: String) throws {
        guard username != self.username else {
            throw SocialError.befriendingSelf
        }
        guard !friends.contains(username) else {
            throw SocialError.alreadyFriend(username: username)
        }
        friends.append(username)
    }
}
