//
//  mealPriceTableViewCell.swift
//  GoDutch
//
//  Created by Calvin Nisbet on 2015-10-01.
//  Copyright © 2015 Lone Pine Creative. All rights reserved.
//

import UIKit

class mealPriceTableViewCell: UITableViewCell {

    @IBOutlet weak var mealPriceTextField: UITextField!
    @IBOutlet weak var mealPriceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
