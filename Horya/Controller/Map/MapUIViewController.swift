//
//  MapUIViewController.swift
//  Horya
//
//  Created by Mac on 28/10/2561 BE.
//  Copyright © 2561 Mac. All rights reserved.
//

import UIKit

class MapUIViewController: UIViewController {

    var imageView = ""
    
    var name = ""
    
    var ScientificName = ""
    
    var DataPropertiesOne = ""

    var DataPropertiesTwo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backpage(_ sender: Any) {
        performSegue(withIdentifier: "nametest", sender: self)
    }
    
    
    

}
