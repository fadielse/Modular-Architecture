//
//  ArticleCell.swift
//  Home
//
//  Created by Fadilah Hasan on 17/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

import UIKit
import SDWebImage

// common
import Media

class ArticleCell: UITableViewCell {

    @IBOutlet weak var contentImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentImage.sd_setImage(with: URL(string: "https://miro.medium.com/max/2868/1*xUOAW5OoiefABw1n_NOw2Q.png"), placeholderImage: Media.instance.getImage(withImage: .placeholderSquare))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
