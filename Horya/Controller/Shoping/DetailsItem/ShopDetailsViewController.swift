//
//  ShopDetailsViewController.swift
//  Horya
//
//  Created by Mac on 28/10/2561 BE.
//  Copyright © 2561 Mac. All rights reserved.
//

import UIKit

class ShopDetailsViewController: UIViewController {
    
    @IBOutlet var ImageOneView: UIImageView!
    var ImageOneViews = ""
    
    @IBOutlet var name: UILabel!
    var names = ""
    
    @IBOutlet var price: UILabel!
    var prices = ""
    
    @IBOutlet var vendor: UILabel!
    var vendors = ""
    
    @IBOutlet weak var pricebth: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Show Data To View
        ImageOneView.image = UIImage(named: ImageOneViews)
        name.text = names
        price.text = prices
        vendor.text = vendors
    }
    
    //function check pay
    @IBOutlet weak var payBtn1: UIButton!
    @IBOutlet weak var payBtn2: UIButton!
    var payBox = "checkPay1"
    let checkPay = UIImage(named: "check") as UIImage?
    let uncheckPay = UIImage(named: "uncheck") as UIImage?
    
    @IBAction func payBtn1(_ sender: Any) {
        if( payBox == "checkPay1"){
            payBox = "checkPay2"
            payBtn1.setImage(checkPay, for: .normal)
            payBtn2.setImage(uncheckPay, for: .normal)
        } else{
            payBox = "checkPay2"
            payBtn1.setImage(uncheckPay, for: .normal)
        }
    }
    
    @IBAction func payBtn2(_ sender: Any) {
        if( payBox == "checkPay2"){
            payBox = "checkPay1"
            payBtn2.setImage(checkPay, for: .normal)
            payBtn1.setImage(uncheckPay, for: .normal)
        } else{
            payBox = "checkPay1"
            payBtn2.setImage(uncheckPay, for: .normal)
        }
    }
    
    //function check accetp to pay 23
    @IBOutlet weak var ok: UIButton!
    @IBOutlet weak var accetpBtn: UIButton!
    var checkbox = "check"
    let check = UIImage(named: "check") as UIImage?
    let uncheck = UIImage(named: "uncheck") as UIImage?
    
    @IBAction func accetp(_ sender: Any) {
        if( checkbox == "check"){
            checkbox = "uncheck"
            accetpBtn.setImage(check, for: .normal)
            ok.isHidden = false
        } else{
            checkbox = "check"
            accetpBtn.setImage(uncheck, for: .normal)
            ok.isHidden = true
        }
    }
    
    //function next page payment
    @IBAction func OkAccetpBtn(_ sender: Any) {
        performSegue(withIdentifier: "payment", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "payment" {
                let destinationController = segue.destination as! PayMentViewController
                
                destinationController.name = names
                destinationController.pricebths = String(pricebth.text!)
                destinationController.price = String(price.text!)
        }
    }
    
}
