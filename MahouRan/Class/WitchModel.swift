//
//  WitchModel.swift
//  MahouRan
//
//  Created by Catalina Rem on 10/8/25.
//

import SwiftData
import Foundation

@Model
class WitchModel {
    var id: UUID
    var nameThai : String
    var nameEnglish: String
    var nameJapanese: String
    var image: String
    var magicClass: String?
    var birthDate: String // Use Date Type
    var height: Int?
    var mbti: MBTI
    var interests: [String]
    var quote: String
    var favoriteMenu: [String]
    var title: String?
    var titleThai: String?
    
    init(id: UUID, nameThai: String, nameEnglish: String, nameJapanese: String, image: String, magicClass: String? = nil, birthDate: String, height: Int? = nil, mbti: MBTI, interests: [String], quote: String, favoriteMenu: [String], title: String? = nil, titleThai: String? = nil) {
        self.id = id
        self.nameThai = nameThai
        self.nameEnglish = nameEnglish
        self.nameJapanese = nameJapanese
        self.image = image
        self.magicClass = magicClass
        self.birthDate = birthDate
        self.height = height
        self.mbti = mbti
        self.interests = interests
        self.quote = quote
        self.favoriteMenu = favoriteMenu
        self.title = title
        self.titleThai = titleThai
    }
}
