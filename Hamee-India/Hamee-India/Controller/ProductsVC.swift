//
//  ProductsVC.swift
//  Hamee-India
//
//  Created by DHEERAJ BHAVSAR on 06/02/18.
//  Copyright © 2018 Dheeraj Bhavsar. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    private(set) public var products = [Product]()
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func initializeProducts(forCategory category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductsCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(forProduct: product)
            return cell
        }
        return ProductCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToBuyProductVC", sender: self)
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let buyProductVC = segue.destination as? BuyProductVC {
//            BuyProductVC.initializeProducts(forCategory: sender as! Product)
//        }
//    }

}
