//
//  PayMentViewController.swift
//  Horya
//
//  Created by Mac on 28/10/2561 BE.
//  Copyright © 2561 Mac. All rights reserved.
//

import UIKit

class PayMentViewController: UIViewController {
    @IBOutlet weak var names: UILabel!
    var name = ""
    
    @IBOutlet weak var Coust: UILabel!
    var pricebths = ""
    
    @IBOutlet weak var sumcoust1: UILabel!
    @IBOutlet weak var sumcoust2: UILabel!
    var price = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let a = Int(pricebths)
        let b = Int(price)
        let c = Int(a!*b!)
        
        names.text = name
        Coust.text = pricebths
        sumcoust1.text = String(c)
        sumcoust2.text = String(c)
    }
    


}
