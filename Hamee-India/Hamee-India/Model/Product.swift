//
//  Product.swift
//  Hamee-India
//
//  Created by DHEERAJ BHAVSAR on 06/02/18.
//  Copyright © 2018 Dheeraj Bhavsar. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.imageName = imageName
        self.price = price
    }
}
