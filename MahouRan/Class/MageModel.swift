//
//  MageModel.swift
//  MahouRan
//
//  Created by Catalina Rem on 10/8/25.
//

import Foundation
class MageModel {
    var id : UUID?
    var nameThai: String
    var nameEnglish: String
    var image: String
    var magicClass: String?
    var birthDate: String
    var height: Int?
    var mbti : MBTI
    var interests: [String]
    
    init(id : UUID? = nil,nameThai: String, nameEnglish: String, image: String, magicClass: String? = nil, birthDate: String, height: Int? = nil, mbti: String, interests: [String]) {
        self.nameThai = nameThai
        self.nameEnglish = nameEnglish
        self.image = image
        self.magicClass = magicClass
        self.birthDate = birthDate
        self.height = height
        self.mbti = MBTI(rawValue: mbti) ?? ._default
        self.interests = interests
    }
}
