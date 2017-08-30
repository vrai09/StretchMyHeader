//
//  CustomTableViewCell.swift
//  StretchMyHeader
//
//  Created by Livleen Rai on 2017-08-29.
//  Copyright © 2017 Livleen Rai. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var headlineLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpCell(category: String, headline: String, headlineColor: UIColor) {
        categoryLabel.text = category
        headlineLabel.text = headline
        headlineLabel.textColor = headlineColor
    }
    
    

}
