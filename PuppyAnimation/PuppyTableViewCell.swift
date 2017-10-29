//
//  PuppyTableViewCell.swift
//  PuppyAnimation
//
//  Created by Darrel Jiang on 10/28/17.
//  Copyright © 2017 JIANG, DARREL [AG/1000]. All rights reserved.
//

import UIKit

class PuppyTableViewCell: UITableViewCell {
    @IBOutlet weak var puppyImageView: UIImageView!
    @IBOutlet weak var puppyLabel: UILabel!
    
    var puppy: Puppy! {
        didSet {
            puppyImageView.image = UIImage(named: puppy.imageName)
            puppyLabel.text = puppy.name
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
