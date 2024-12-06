//
//  CustomCellTableViewCell.swift
//  Snip App
//
//  Created by Chandu .. on 11/18/24.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var singerDetails: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
