//
//  RipositoriesTableViewCell.swift
//  TeaComputersTechnicalTask
//
//  Created by Ahmed Fekry on 17/06/2023.
//

import UIKit

class RipositoriesTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nameTextLable: UILabel!
        
    @IBOutlet weak var connectionImageView: UIImageView!
    
    @IBOutlet weak var discriptionTextView: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
