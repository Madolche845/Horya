//
//  SearchViewController.swift
//  Horya
//
//  Created by Mac on 27/10/2561 BE.
//  Copyright © 2561 Mac. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController , UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    @IBOutlet var table: UITableView!
    @IBOutlet var searchBar: UISearchBar!
    
    var herbArray = [Herb]()
    var currentHerbArray = [Herb]() //update table
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAnimals()
        setUpSearchBar()
        alterLayout()
    }
    // Add data in Array
    private func setUpAnimals() {
        // plant
        herbArray.append(Herb(name: "ข่อย", category: .plant, image:"1"))
        herbArray.append(Herb(name: "เทพทาโร", category: .plant, image:"2"))
        herbArray.append(Herb(name: "ขิง", category: .plant, image:"3"))
        herbArray.append(Herb(name: "ดีปลี", category: .plant, image:"4"))
        herbArray.append(Herb(name: "หมาก", category: .plant, image:"5"))
        herbArray.append(Herb(name: "ตาลตะโหนด", category: .plant, image:"6"))
        herbArray.append(Herb(name: "ตะไคร้", category: .plant, image:"7"))
        herbArray.append(Herb(name: "หมากผู้หมากเมีย", category: .plant, image:"8"))
        herbArray.append(Herb(name: "ขมิ้นชัน", category: .plant, image:"9"))
        herbArray.append(Herb(name: "เตยหอม", category: .plant, image:"10"))
        herbArray.append(Herb(name: "ข่า", category: .plant, image:"11"))
        herbArray.append(Herb(name: "กระชาย", category: .plant, image:"12"))
        herbArray.append(Herb(name: "ชะเอมเทศ", category: .plant, image:"13"))
        herbArray.append(Herb(name: "ว่านกาบหอย", category: .plant, image:"14"))
        herbArray.append(Herb(name: "ก้ามปูหลุด", category: .plant, image:"15"))
        herbArray.append(Herb(name: "บานไม่รู้โรย", category: .plant, image:"16"))
        
        // animal
        herbArray.append(Herb(name: "เบี้ยผู้", category: .anm, image:"17"))
        herbArray.append(Herb(name: "หอยสังข์", category: .anm, image:"18"))
        
        // mineral
        herbArray.append(Herb(name: "ทองคำ", category: .mineral, image:"19"))
        herbArray.append(Herb(name: "ดินประสิว", category: .mineral, image:"20"))
        
        currentHerbArray = herbArray
    }
    
    private func setUpSearchBar() {
        searchBar.delegate = self
    }
    
    func alterLayout() {
        table.tableHeaderView = UIView()
        table.estimatedSectionHeaderHeight = 50
    }
    
    // Table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentHerbArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? SearchTableViewCell else {
            return UITableViewCell()
        }
        cell.nameLbl.text = currentHerbArray[indexPath.row].name
        cell.categoryLbl.text = currentHerbArray[indexPath.row].category.rawValue
        cell.imgView.image = UIImage(named:currentHerbArray[indexPath.row].image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    // This two functions can be used if you want to show the search bar in the section header
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return searchBar
    }
    
    //    // search bar in section header
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    // Search Bar
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard !searchText.isEmpty else {
            currentHerbArray = herbArray
            table.reloadData()
            return
        }
        currentHerbArray = herbArray.filter({ animal -> Bool in
            animal.name.lowercased().contains(searchText.lowercased())
        })
        table.reloadData()
    }
    
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        switch selectedScope {
        case 0: currentHerbArray = herbArray
        case 1: currentHerbArray = herbArray.filter({ (herb) -> Bool in
            herb.category == HerbType.plant
        })
        case 2:currentHerbArray = herbArray.filter({ (herb) -> Bool in
            herb.category == HerbType.anm
        })
        case 3:currentHerbArray = herbArray.filter({ (herb) -> Bool in
            herb.category == HerbType.mineral
        })
        default:
            break
        }
        table.reloadData()
    }
}

class Herb {
    let name: String
    let image: String
    let category: HerbType
    
    init(name: String, category: HerbType, image: String) {
        self.name = name
        self.category = category
        self.image = image
    }
}

enum HerbType: String {
    case plant = "พืช"
    case anm = "สัตว์"
    case mineral = "แร่ธาตุ"
}

