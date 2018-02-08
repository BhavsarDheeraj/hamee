//
//  CategoryCell.swift
//  Hamee-India
//
//  Created by DHEERAJ BHAVSAR on 04/02/18.
//  Copyright © 2018 Dheeraj Bhavsar. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!

    func updateView(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
    }
    
}
