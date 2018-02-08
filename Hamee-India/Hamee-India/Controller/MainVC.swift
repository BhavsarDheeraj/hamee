//
//  ViewController.swift
//  Hamee-India
//
//  Created by DHEERAJ BHAVSAR on 04/02/18.
//  Copyright © 2018 Dheeraj Bhavsar. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        categoryTable.delegate = self
        categoryTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateView(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductsVC {
            productVC.initializeProducts(forCategory: sender as! Category)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "goToProductVC", sender: category)
    }


}

