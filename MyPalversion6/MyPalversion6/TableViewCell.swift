//
//  TableViewCell.swift
//  MyPalversion6
//
//  Created by auc on 19/07/2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet var dogimage:
        UIImageView!
    @IBOutlet var dogname:
        UILabel!
    @IBOutlet var dogtype:
        UILabel!
    
    var dogmodel : Dog?{
        didSet{
            dogname.text = dogmodel?.DogName
            dogtype.text = dogmodel?.DogType
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
