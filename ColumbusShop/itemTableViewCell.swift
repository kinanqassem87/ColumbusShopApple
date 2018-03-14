//
//  itemTableViewCell.swift
//  ColumbusShop
//
//  Created by Mahmoud Harfouche on 3/14/18.
//  Copyright © 2018 Columbus. All rights reserved.
//

import UIKit

class itemTableViewCell: UITableViewCell {

    @IBOutlet weak var barcodedesc: UILabel!
    @IBOutlet weak var imgdesc: UIImageView!
    @IBOutlet weak var itemimg: UIImageView!
    @IBOutlet weak var lbbarcode: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
