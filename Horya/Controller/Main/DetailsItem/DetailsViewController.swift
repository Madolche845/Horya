//
//  DetailsViewController.swift
//  Horya
//
//  Created by Mac on 27/10/2561 BE.
//  Copyright © 2561 Mac. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var ImageView: UIImageView!
    var imageView = ""
    
    @IBOutlet weak var Name: UILabel!
    var name = ""
    
    @IBOutlet weak var Scientificname: UILabel!
    var ScientificName = ""
    
    @IBOutlet weak var Properties: UILabel!
    var properties = ""
    
    @IBOutlet weak var dataPropertiesOne: UILabel!
    var DataPropertiesOne = ""
    
    @IBOutlet weak var dataPropertiesTwo: UILabel!
    var DataPropertiesTwo = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        
//        restaurantImageView.image = UIImage(named: restaurantImageName)
        Name.text = name
        Properties.text = properties
        
        // Do any additional setup after loading the view.
    }
    
}
