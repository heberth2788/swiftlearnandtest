//
//  File.swift
//  SocialGraph
//
//  Created by Heberth Deza on 10/04/25.
//

import Foundation

public class UserStore {
    
    var allUsers: [String: User] = [:]
}

extension UserStore {
    
    public func lookUpUser(_ username: String) -> User? {
        guard let user = allUsers[username], user.isVisible else {
            return nil
        }
        return user
    }
    
    public func user(for username: String) throws -> User {
        guard let user = lookUpUser(username) else {
            throw SocialError.userNotFound(username: username)
        }
        return user
    }
    
    public func friendsOfFriends(_ username: String) throws -> [String] {
        let user = try user(for: username)
        let exclude = Set(user.friends + [username])
        return user.friends
            .compactMap { lookUpUser($0) }      // [String] -> [User]
            .flatMap { $0.friends }             // [User] -> [String]
            .filter { !exclude.contains($0) }   // drop excluded
            .uniqued()
    }
}

extension Collection where Element: Hashable {
    
    func uniqued() -> [Element] {
        let unique = Set(self)
        return Array(unique)
    }
}
