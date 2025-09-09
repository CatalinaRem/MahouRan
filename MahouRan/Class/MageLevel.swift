//
//  MageLevel.swift
//  MahouRan
//
//  Created by Catalina Rem on 14/8/25.
//

import Foundation

enum MageLevel: String , Codable {
    case newbie
    case apprentice
    case mage
    case witch
    
    var level: String {
        switch self {
            case .newbie:
            return "Newbie"
        case .apprentice:
            return "Apprentice"
        case .mage:
            return "Mage"
        case .witch:
            return "Witch"
        }
    }
}
