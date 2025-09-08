//
//  UserData.swift
//  MahouRan
//
//  Created by Catalina Rem on 16/8/25.
//

// HACK : Used for testing only

import Foundation

struct UserData {
    let id: UUID = UUID()
    var firstName: String
    var lastName: String
    var fullName: String
    var userImage: String
    var userXP: Int
    var userRank: String
}

var currentUser = UserData(
    firstName: "Aquamarine",
    lastName: "Kasane",
    fullName: "Aquamarine Kasane",
    userImage: "aquamarine",
    userXP: 200,
    userRank: "Explorer"
)
