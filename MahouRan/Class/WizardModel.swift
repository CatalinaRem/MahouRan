//
//  WizardModel.swift
//  MahouRan
//
//  Created by Catalina Rem on 10/8/25.
//

import SwiftUI


class WizardModel: MageModel, ObservableObject {
    @Published var dislike: String?
    @Published var snack: String
    let isMale: Bool = true

    init(id: UUID = UUID(),
         nameThai: String,
         nameEnglish: String,
         image: String,
         magicClass: String? = nil,
         birthDate: String,
         height: Int? = nil,
         mbti: MBTI,
         interests: [String],
         dislike: String? = nil,
         snack: String) {
        self.dislike = dislike
        self.snack = snack
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
