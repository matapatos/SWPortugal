//
//  ShowParkTableViewCell.swift
//  RealSWPortugal
//
//  Created by Matapatos on 27/12/15.
//  Copyright © 2015 Matapatos. All rights reserved.
//

import UIKit

class ShowParkTableViewCell: UITableViewCell {

    
    @IBOutlet weak var parkImage: UIImageView!
    @IBOutlet weak var parkTitle: UILabel!
    @IBOutlet weak var parkLocation: UILabel!
    @IBOutlet weak var parkType: UILabel!
    @IBOutlet weak var parkRating: RatingControl!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
