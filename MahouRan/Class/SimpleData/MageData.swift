//
//  MageData.swift
//  MahouRan
//
//  Created by Catalina Rem on 11/8/25.
//

// HACK : Used for testing only

import Foundation

let allWitches: [WitchModel] = [hina , jiro , sera , marry , zerine]

let pippo = WitchModel(
    id: UUID(),
    nameThai: "ปิปโปะ",
    nameEnglish: "Pippo",
    image: "pippo",
    magicClass: nil,
    birthDate: "10 October",
    height: 158,
    mbti: .ENFJ,
    interests: ["Anime","Manga","Space","Real Estate"],
    nameJapanese: "ピッポ",
    quote: "ป็อก ๆ ต๊าก ~ ป๊อก ๆ",
    favoriteMenu: ["KFC near Future Park Rangsit"],
    title: "The Star Witch of the Seven Sisters",
    titleThai: "แม่มดแห่งดาวลูกไก่"
)

let hina = WitchModel(
    id: UUID(),
    nameThai: "ฮินะ",
    nameEnglish: "Hina",
    image: "hina",
    magicClass: nil,
    birthDate: "26 March",
    height: 152,
    mbti: .INTP,
    interests: ["Anime" , "Book"],
    nameJapanese: "ヒナ",
    quote: "ฮินะรอที่จะได้พบทุกคนที่มาโฮรันเลย\nปุยใหม่ขอฝากตัวกับรุ่นพี่ทุกคนนะคะ",
    favoriteMenu: ["Spaghetti Carbonara"],
    title: "The Witch of Learning",
    titleThai: "แม่มดแห่งการเรียนรู้"
)

let sera = WitchModel(
    id: UUID(),
    nameThai: "เซระ",
    nameEnglish: "Sera",
    image: "sera",
    magicClass: nil,
    birthDate: "26 September",
    height: 160,
    mbti: .INFJ,
    interests: ["Detective Conan" , "Idol" , "Everythings is cutie"],
    nameJapanese: "セラ",
    quote: "ปุยหน้าใหม่สุดเบียวพร้อม\nมอบรอยยิ้มและพลังงานบวกแก่รุ่นพี่\nนั่นก็คือ เซระจัง",
    favoriteMenu: ["Seafood Yum Woon Sen"],
    title: "The Witch of Stardust",
    titleThai: "แม่มดแห่งละอองดาว"
    )

let marry = WitchModel(
    id: UUID(),
    nameThai: "แมรี่",
    nameEnglish: "Marry",
    image: "marry",
    magicClass: nil,
    birthDate: "3 December",
    height: 161,
    mbti: .INFJ,
    interests: ["Tarlot","Anime","Cooking"],
    nameJapanese: "マリー",
    quote: "ขอขยะกินหน่อยได้ไหมคะ",
    favoriteMenu: ["Matcha Latte", "Yakimo"],
    title: "The Witch of Chaotic",
    titleThai: "แม่มดแห่งความโกลาหล"
    )

let jiro = WitchModel(
    id: UUID(),
    nameThai: "จิโระ",
    nameEnglish: "Jiro",
    image: "jiro",
    magicClass: nil,
    birthDate: "02 October",
    height: 167,
    mbti: .INFJ,
    interests: ["K-POP" , "J-ROCK" , "Anime"],
    nameJapanese: "ジロ",
    quote: "แน่จริงก็มาหาทุกวันเดะ",
    favoriteMenu: ["Salmon"],
    title: nil,
    titleThai: nil
    )

let zerine = WitchModel(
    id: UUID(),
    nameThai: "เซริน",
    nameEnglish: "Zerine",
    image: "zerine",
    magicClass: nil,
    birthDate: "28 September",
    height: 167,
    mbti: .INFJ,
    interests: ["Art","Cat","Movie"],
    nameJapanese: "ゼリン",
    quote: "เขาว่ากันว่า ถ้ารุ่นพี่ขอพรกับเซรินจะทำให้กลายเป็นลิง",
    favoriteMenu: ["Peach Soda", "Chocolate"],
    title: nil,
    titleThai: nil
    )
