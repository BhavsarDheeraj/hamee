//
//  DataService.swift
//  Hamee-India
//
//  Created by DHEERAJ BHAVSAR on 04/02/18.
//  Copyright © 2018 Dheeraj Bhavsar. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let productDescription = "Description: Our most popular bottle, available in a variety of colors to help brighten up anybody’s gear. The large opening on our wide-mouth bottles easily accommodates ice cubes, fits most water purifiers and filters, and makes hand washing a breeze. The attached loop-top never gets lost and screws on and off easily. Printed graduations let keep track of your hydration. Dishwasher safe (Please make sure the top does not touch the heating element, or it will melt).\nWhy we love it: It’s clear this is a product that customers love. The description clearly articulates the water bottles special perks and practicality. Nalgene is also very smart to include that its product is dishwasher safe; touching on what could be a pain point for its customers. Finally, the company makes an important disclaimer with the text “Please make sure the top does not touch the heating element” to provide valuable product care information that will help the company proactively reduce returns."
    
    private let categories = [
        Category(title: "POWER BANK", imageName: "powerbank.jpg"),
        Category(title: "PHONE COVER", imageName: "phonecover.jpg"),
        Category(title: "NOTEBOOK", imageName: "notebook.jpg"),
        Category(title: "MOUSE PAD", imageName: "mousepad.jpg"),
        Category(title: "MACBOOK CASE", imageName: "macbookcase.jpg"),
        Category(title: "TABLET CASE", imageName: "tabletcase.jpg"),
        Category(title: "COFFEE MUG", imageName: "coffeemug.jpg"),
        Category(title: "WATER BOTTLE", imageName: "waterbottle.jpg"),
        Category(title: "LAPTOP DECALS", imageName: "laptopdecals.jpg")
    ]
    
    private let powerbanks = [
        Product(title: "Watermelon Designer 10000mAh", price: "₹1999", imageName: "powerbank01.jpg"),
        Product(title: "Unicorn Designer 10000mAh", price: "₹1999", imageName: "powerbank02.jpg"),
        Product(title: "Tribal Pattern Designer 10000mAh", price: "₹1999", imageName: "powerbank03.jpg"),
        Product(title: "Swastik Mandala Designer 10000mAh", price: "₹1999", imageName: "powerbank04.jpg"),
        Product(title: "Strawberry Designer 10000mAh", price: "₹1999", imageName: "powerbank05.jpg"),
        Product(title: "Sparkle Designer 10000mAh", price: "₹1999", imageName: "powerbank06.jpg"),
    ]
    
    private let phonecovers = [
        Product(title: "E = mc2 Designer Printed Case", price: "₹349", imageName: "phonecover01.jpg"),
        Product(title: "Ganesha Designer Printed Case", price: "₹349", imageName: "phonecover02.jpg"),
        Product(title: "Bricks Designer Printed Case", price: "₹349", imageName: "phonecover03.jpg"),
        Product(title: "Teddy Designer Printed Case", price: "₹349", imageName: "phonecover04.jpg"),
        Product(title: "Mandala Planets Designer Printed Case", price: "₹349", imageName: "phonecover05.jpg"),
        Product(title: "Block Mandala Designer Printed Case", price: "₹349", imageName: "phonecover06.jpg")
    ]
    
    private let notebooks = [
        Product(title: "2018 Tan Brown Leather Diary", price: "₹399", imageName: "notebook01.jpg"),
        Product(title: "2018 Tan Brown Leather Diary", price: "₹399", imageName: "notebook02.jpg"),
        Product(title: "2018 Tan Brown Leather Diary", price: "₹399", imageName: "notebook03.jpg"),
        Product(title: "2018 Tan Brown Leather Diary", price: "₹399", imageName: "notebook04.jpg"),
        Product(title: "2018 Tan Brown Leather Diary", price: "₹399", imageName: "notebook05.jpg"),
        Product(title: "2018 Tan Brown Leather Diary", price: "₹399", imageName: "notebook06.jpg")
    ]
    
    private let mousepads = [
        Product(title: "Customized Leather Gaming Mouse Pad", price: "₹349", imageName: "mousepad01.jpg"),
        Product(title: "Customized Leather Gaming Mouse Pad", price: "₹349", imageName: "mousepad02.jpg"),
        Product(title: "Customized Leather Gaming Mouse Pad", price: "₹349", imageName: "mousepad03.jpg"),
        Product(title: "Customized Leather Gaming Mouse Pad", price: "₹349", imageName: "mousepad04.jpg"),
        Product(title: "Customized Leather Gaming Mouse Pad", price: "₹349", imageName: "mousepad05.jpg"),
        Product(title: "Customized Leather Gaming Mouse Pad", price: "₹349", imageName: "mousepad06.jpg")
    ]
    
    private let macbookcases = [
        Product(title: "Matte Finish Slim fit Shell Case", price: "₹899", imageName: "macbookcase01.jpg"),
        Product(title: "Matte Finish Slim fit Shell Case", price: "₹899", imageName: "macbookcase02.jpg"),
        Product(title: "Matte Finish Slim fit Shell Case", price: "₹899", imageName: "macbookcase03.jpg"),
        Product(title: "Matte Finish Slim fit Shell Case", price: "₹899", imageName: "macbookcase04.jpg"),
        Product(title: "Matte Finish Slim fit Shell Case", price: "₹899", imageName: "macbookcase05.jpg"),
        Product(title: "Matte Finish Slim fit Shell Case", price: "₹899", imageName: "macbookcase06.jpg")
    ]
    
    private let tabletcases = [
        Product(title: "Leather Rotating Flip Case", price: "₹325", imageName: "tabletcase01.jpg"),
        Product(title: "Leather Rotating Flip Case", price: "₹325", imageName: "tabletcase02.jpg"),
        Product(title: "Leather Rotating Flip Case", price: "₹325", imageName: "tabletcase03.jpg"),
        Product(title: "Leather Rotating Flip Case", price: "₹325", imageName: "tabletcase04.jpg"),
        Product(title: "Leather Rotating Flip Case", price: "₹325", imageName: "tabletcase05.jpg"),
        Product(title: "Leather Rotating Flip Case", price: "₹325", imageName: "tabletcase06.jpg")
    ]
    
    private let coffeemugs = [
        Product(title: "Valentine's Day Special Mug", price: "₹249", imageName: "coffeemug01.jpg"),
        Product(title: "Valentine's Day Special Mug", price: "₹249", imageName: "coffeemug02.jpg"),
        Product(title: "Valentine's Day Special Mug", price: "₹249", imageName: "coffeemug03.jpg"),
        Product(title: "Valentine's Day Special Mug", price: "₹249", imageName: "coffeemug04.jpg"),
        Product(title: "Valentine's Day Special Mug", price: "₹249", imageName: "coffeemug05.jpg"),
        Product(title: "Valentine's Day Special Mug", price: "₹249", imageName: "coffeemug06.jpg")
    ]
    
    private let waterbottles = [
        Product(title: "Transparent Memo Water Bottle", price: "₹399", imageName: "waterbottle01.jpg"),
        Product(title: "Transparent Memo Water Bottle", price: "₹399", imageName: "waterbottle02.jpg"),
        Product(title: "Transparent Memo Water Bottle", price: "₹399", imageName: "waterbottle03.jpg"),
        Product(title: "Transparent Memo Water Bottle", price: "₹399", imageName: "waterbottle04.jpg"),
        Product(title: "Transparent Memo Water Bottle", price: "₹399", imageName: "waterbottle05.jpg"),
        Product(title: "Transparent Memo Water Bottle", price: "₹399", imageName: "waterbottle06.jpg")
    ]
    
    private let laptopdecals = [
        Product(title: "Hamee Pattern Decal Skin", price: "₹799", imageName: "laptopdecals01.jpg"),
        Product(title: "Hamee Pattern Decal Skin", price: "₹799", imageName: "laptopdecals02.jpg"),
        Product(title: "Hamee Pattern Decal Skin", price: "₹799", imageName: "laptopdecals03.jpg"),
        Product(title: "Hamee Pattern Decal Skin", price: "₹799", imageName: "laptopdecals04.jpg"),
        Product(title: "Hamee Pattern Decal Skin", price: "₹799", imageName: "laptopdecals05.jpg"),
        Product(title: "Hamee Pattern Decal Skin", price: "₹799", imageName: "laptopdecals06.jpg")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "POWER BANK":
            return getPowerbanks()
        case "PHONE COVER":
            return getPhonecovers()
        case "NOTEBOOK":
            return getNotebooks()
        case "MOUSE PAD":
            return getMousepads()
        case "MACBOOK CASE":
            return getMacbookcases()
        case "TABLET CASE":
            return getTabletcases()
        case "COFFEE MUG":
            return getCoffeemugs()
        case "WATER BOTTLE":
            return getWatebottles()
        case "LAPTOP DECALS":
            return getLaptopdecals()
        default:
            return getMacbookcases()
        }
    }
    
    func getPowerbanks() -> [Product] {
        return powerbanks
    }
    
    func getPhonecovers() -> [Product] {
        return phonecovers
    }
    
    func getNotebooks() -> [Product] {
        return notebooks
    }
    
    func getMousepads() -> [Product] {
        return mousepads
    }
    
    func getMacbookcases() -> [Product] {
        return macbookcases
    }
    
    func getTabletcases() -> [Product] {
        return tabletcases
    }
    
    func getCoffeemugs() -> [Product] {
        return coffeemugs
    }
    
    func getWatebottles() -> [Product] {
        return waterbottles
    }
    
    func getLaptopdecals() -> [Product] {
        return laptopdecals
    }
    
    
    
}

