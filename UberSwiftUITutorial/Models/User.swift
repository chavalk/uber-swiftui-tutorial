//
//  User.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/12/23.
//

import Foundation

enum AccountType: Int, Codable {
    case passenger
    case driver
}

struct User: Codable {
    let fullName: String
    let email: String
    let uid: String
    var accountType: AccountType
    var homeLocation: SavedLocation?
    var workLocation: SavedLocation?
}
