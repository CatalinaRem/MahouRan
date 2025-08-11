//
//  WitchModel.swift
//  MahouRan
//
//  Created by Catalina Rem on 10/8/25.
//

import SwiftUI

class WitchModel: MageModel, ObservableObject {
    @Published var nameJapanese: String
    @Published var quote: String
    @Published var favoriteMenu: [String]
    let isFemale: Bool = true

    init(id: UUID = UUID(),
         nameThai: String,
         nameEnglish: String,
         image: String,
         magicClass: String? = nil,
         birthDate: String,
         height: Int? = nil,
         mbti: MBTI,
         interests: [String],
         nameJapanese: String,
         quote: String,
         favoriteMenu: [String]) {
        self.nameJapanese = nameJapanese
        self.quote = quote
        self.favoriteMenu = favoriteMenu
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
