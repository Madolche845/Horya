//
//  MainTableViewCell.swift
//  Horya
//
//  Created by Mac on 27/10/2561 BE.
//  Copyright © 2561 Mac. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    @IBOutlet var ImageOneView: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var properties: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
