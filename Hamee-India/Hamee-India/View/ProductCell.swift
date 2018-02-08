//
//  ProductCell.swift
//  Hamee-India
//
//  Created by DHEERAJ BHAVSAR on 06/02/18.
//  Copyright © 2018 Dheeraj Bhavsar. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productTitle: UILabel!
    
    func updateViews(forProduct product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    
}
