//
//  MenuData.swift
//  MahouRan
//
//  Created by Catalina Rem on 2/9/25.
//

import Foundation

struct MenuModel {
    let id = UUID()
    let image: String
    let itemName: String
    let itemPrice: String
}

let allMenu : [MenuModel] = [pangeana , hydrogna , verunde , ignista , babyHooLoo , babyMicey , bacoonButter , ebiRollMidas]


let pangeana = MenuModel(
 image: "Pangeana Dura Blanca",
 itemName: "Pangeana Dura Blanca",
 itemPrice: "120 Ran"
)

let hydrogna = MenuModel(
    image: "Hydrogna Panthalassa",
    itemName: "Hydrogna Panthalassa",
    itemPrice: "120 Ran"
)

let verunde = MenuModel(
    image: "Verunde Fantastica",
    itemName: "Verunde Fantastica",
    itemPrice: "120 Ran"
)


let ignista = MenuModel(
    image: "Ignista Incentiana",
    itemName: "Ignista Incentiana",
    itemPrice: "120 Ran"
)

let babyHooLoo = MenuModel(
    image: "Baby Hooloo",
    itemName: "Baby Hooloo",
    itemPrice: "159 Ran"
)

let babyMicey = MenuModel(
    image: "Baby Micey",
    itemName: "Baby Micey",
    itemPrice: "159 Ran"
)

let bacoonButter = MenuModel(
    image: "Bacoon Butter",
    itemName: "Bacoon Butter",
    itemPrice: "79 Ran"
)

let ebiRollMidas = MenuModel(
    image: "Ebi Roll Midas",
    itemName: "Ebi Roll Midas",
    itemPrice: "120 Ran"
)

let edamane = MenuModel(
    image: "Edamame",
    itemName: "Edamame",
    itemPrice: "119 Ran"
)

let sausage = MenuModel(
    image: "Sausage",
    itemName: "Sausage",
    itemPrice: "119 Ran"
)

let spaghetti = MenuModel(
    image: "Spaghetti",
    itemName: "Spaghetti",
    itemPrice: "249 Ran"
)
