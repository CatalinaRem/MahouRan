//
//  UserData.swift
//  MahouRan
//
//  Created by Catalina Rem on 16/8/25.
//

// HACK : Used for testing only

import Foundation
import SwiftData
import SwiftUICore

@Model
class UserData {
    var id: UUID = UUID()
    var firstName: String
    var lastName: String
    var email: String
    var password: String
    var userImage: String
    var userXP: Int
    var userRank: String
    
    init(id: UUID, firstName: String, lastName: String, email: String, password: String, userImage: String, userXP: Int, userRank: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.userImage = userImage
        self.userXP = userXP
        self.userRank = userRank
        
        var fullName: String {
               return "\(firstName) \(lastName)"
           }
    }
}


var currentUser = UserData(
    id: UUID(),
    firstName: "Aquamarine",
    lastName: "Kasane",
    email: "aqua@mahouran.in.th",
    password: "password",
    userImage: "aquamarine",
    userXP: 200,
    userRank: "Explorer"
)



func addDummyUser(context: ModelContext) {
    let aqua = UserData(
        id: UUID(),
        firstName: "Aquamarine",
        lastName: "Kasane",
        email: "aqua@mahouran.in.th",
        password: "password",
        userImage: "aquamarine",
        userXP: 200,
        userRank: "Explorer"
    )
    context.insert(aqua)
}
