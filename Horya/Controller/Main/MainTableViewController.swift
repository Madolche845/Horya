//
//  MainTableViewController.swift
//  Horya
//
//  Created by Mac on 27/10/2561 BE.
//  Copyright © 2561 Mac. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    var image = ["cafedeadend", "homei", "teakha", "cafeloisl", "petiteoyster", "forkeerestaurant", "posatelier", "bourkestreetbakery", "haighschocolate", "palominoespresso", "upstate", "traif", "grahamavenuemeats", "wafflewolf", "fiveleaves", "cafelore", "confessional", "barrafina", "donostia", "royaloak", "caskpubkitchen"]
    
    var Name = ["ข่อย","เทพธาโร", "ขิง", "ดีปลี", "หมาก", "ตาลตะโหนด", "ตะไคร้", "หมากผู้หมากเมีย", "ชะเอมเทศ", "ว่านกาบหอย", "ขมิ้นชัน", "เตยหอม", "ข่า" ]
    
    var Properties = ["cafedeadend", "homei", "teakha", "cafeloisl", "petiteoyster", "forkeerestaurant", "posatelier", "bourkestreetbakery", "haighschocolate", "palominoespresso", "upstate", "traif", "grahamavenuemeats", "wafflewolf", "fiveleaves", "cafelore", "confessional", "barrafina", "donostia", "royaloak", "caskpubkitchen"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Name.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MainTableViewCell
        
        // Configure the cell...
//        cell.thumbnailImageView.image = UIImage(named: restaurantImages[indexPath.row])
        cell.name.text = Name[indexPath.row]
        cell.properties.text = Properties[indexPath.row]

        return cell
        
    }
    
//    Next Page
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
//        if segue.identifier == "showRestaurantDetail" {
//            if let indexPath = tableView.indexPathForSelectedRow {
//                let destinationController = segue.destination as! RestaurantDetailViewController
//
//                destinationController.restaurantImageName = restaurantImages[indexPath.row]
//                destinationController.restaurantName = restaurantNames[indexPath.row]
//                destinationController.restaurantLocations = restaurantLocations[indexPath.row]
//                destinationController.restaurantType = restaurantTypes[indexPath.row]
//            }
//        }
//    }

}
