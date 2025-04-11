//
//  SocialError.swift
//  MySocialGraph
//
//  Created by Heberth Deza on 10/04/25.
//

import Foundation

public enum SocialError: Error, Equatable, Hashable {
    
    case befriendingSelf
    case alreadyFriend(username: String)
    case userNotFound(username: String)
}
