//
//  PayMentViewController.swift
//  Horya
//
//  Created by Mac on 28/10/2561 BE.
//  Copyright © 2561 Mac. All rights reserved.
//

import UIKit

class PayMentViewController: UIViewController {
    //Get Data Details
    @IBOutlet weak var names: UILabel!
    var name = ""
    
    @IBOutlet weak var Coust: UILabel!
    var pricebths = ""
    
    @IBOutlet weak var sumcoust1: UILabel!
    @IBOutlet weak var sumcoust2: UILabel!
    var price = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Calculate()
    }
    
    //Calculate To Product
    func Calculate(){

        let pricebth = Int(pricebths)
        let prices = Int(price)
        let SumPries = Int(pricebth!*prices!)
        
        names.text = name
        Coust.text = pricebths
        sumcoust1.text = String(SumPries)
        sumcoust2.text = String(SumPries)
    }

}
