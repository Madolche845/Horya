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
    
   @IBOutlet weak var datasPropertiesOnes: UITextView!
    var DataPropertiesOne = ""

    @IBOutlet weak var dataPeopertiesTwos: UITextView!
    var DataPropertiesTwo = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        
        //Show Data To View
        ImageView.image = UIImage(named: imageView)
        Name.text = name
        Scientificname.text = ScientificName
        datasPropertiesOnes.text = DataPropertiesOne
        dataPeopertiesTwos.text = DataPropertiesTwo
        
    }
    
}
