//
//  ShopoingTableViewCell.swift
//  Horya
//
//  Created by Mac on 28/10/2561 BE.
//  Copyright © 2561 Mac. All rights reserved.
//

import UIKit

class ShopoingTableViewCell: UITableViewCell {

    //Setup Input View 
    @IBOutlet var ImageOneView: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var price: UILabel!
    @IBOutlet var vendor: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
