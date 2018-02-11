//
//  BuyProductVC.swift
//  Hamee-India
//
//  Created by DHEERAJ BHAVSAR on 11/02/18.
//  Copyright © 2018 Dheeraj Bhavsar. All rights reserved.
//

import UIKit

class BuyProductVC: UIViewController {

    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productDescription: UITextView!
    
//    private(set) public var product = Product(title: <#T##String#>, price: <#T##String#>, imageName: <#T##String#>)
    
//    func initializeProduct(forProduct poduct: Product) {
//        product = DataService.instance.getProducts(forCategoryTitle: category.title)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
