//
//  ShopingTableViewController.swift
//  Horya
//
//  Created by Mac on 28/10/2561 BE.
//  Copyright © 2561 Mac. All rights reserved.
//

import UIKit

class ShopingTableViewController: UITableViewController {

    //Data Set Array
    var image = ["กระวานดำ", "จันทร์เทศ", "เถาสะค้าน", "ลูกกระวาน", "หญ้าฝรั่น"]
    
    var name = ["กระวานดำ", "จันทร์เทศ", "เขาสะค้าน", "ลูกกระวาน", "หญ้าฝรั่น"]
    
    var price = ["30", "50", "90", "60", "80"]
    
    var vendor = ["นายสมชัย จิตดี", "นางสมหญิง สวยสวย", "นายค้อ รอใจ", "บ้านไพรหอม", "สวนนายสนั่น"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return name.count
    }
    
    //Show Datas
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ShopoingTableViewCell
        
        // Configure the cell...
        cell.ImageOneView.image = UIImage(named: image[indexPath.row])
        cell.name.text = name[indexPath.row]
        cell.price.text = price[indexPath.row]
        cell.vendor.text = vendor[indexPath.row]
        
        return cell
        
    }

    //Next Page Show Datas
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "showDetailShop" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! ShopDetailsViewController

                destinationController.ImageOneViews = image[indexPath.row]
                destinationController.names = name[indexPath.row]
                destinationController.prices = price[indexPath.row]
                destinationController.vendors = vendor[indexPath.row]
            }
        }
    }
    
}
