//
//  MageModel.swift
//  MahouRan
//
//  Created by Catalina Rem on 10/8/25.
//

class MageModel : Identifiable {
    var id: Int
    var nameThai: String
    var nameEnglish: String
    var image: String
    var birthDate: String
    var height: Int?
    var mbti : String
    var interests: [String]
    
    init(id: Int, nameThai: String, nameEnglish: String, image: String, birthDate: String, height: Int? = nil, mbti: String, interests: [String]) {
        self.id = id
        self.nameThai = nameThai
        self.nameEnglish = nameEnglish
        self.image = image
        self.birthDate = birthDate
        self.height = height
        self.mbti = mbti
        self.interests = interests
    }
}

class WitchCharacterModel : MageModel {
    var nameJapanese: String
    var quote: String
    var favoriteMenu: [String]
    
    init(nameJapanese: String, quote: String, favoriteMenu: [String]) {
        self.nameJapanese = nameJapanese
        self.quote = quote
        self.favoriteMenu = favoriteMenu
        super.init(id: 0, nameThai: "", nameEnglish: "", image: "", birthDate: "", mbti: "", interests: [])
    }
}
