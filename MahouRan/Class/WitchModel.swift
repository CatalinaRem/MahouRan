//
//  WitchModel.swift
//  MahouRan
//
//  Created by Catalina Rem on 10/8/25.
//

import SwiftData
import Foundation

class WitchModel: MageModel {
    var nameJapanese: String
    var quote: String
    var favoriteMenu: [String]
    var title: String? = nil
    var titleThai: String? = nil
    
    init(id: UUID = UUID(),
         nameThai: String,
         nameEnglish: String,
         image: String,
         magicClass: String? = nil,
         birthDate: String,
         height: Int?,
         mbti: MBTI,
         interests: [String],
         nameJapanese: String,
         quote: String,
         favoriteMenu: [String],
         title : String? = nil,
         titleThai : String? = nil
    )
    {
        self.nameJapanese = nameJapanese
        self.quote = quote
        self.favoriteMenu = favoriteMenu
        self.title = title
        self.titleThai = titleThai
        super.init(id: id,
                   nameThai: nameThai,
                   nameEnglish: nameEnglish,
                   image: image,
                   magicClass: magicClass,
                   birthDate: birthDate,
                   height: height,
                   mbti: mbti.rawValue,
                   interests: interests)
    }
    
}
