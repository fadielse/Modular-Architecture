//
//  HeaderProfileCell.swift
//  Profile
//
//  Created by Fadilah Hasan on 18/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

import UIKit
import SDWebImage

//common
import Media

class HeaderProfileCell: UITableViewCell {

    @IBOutlet weak var imagePhoto: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imagePhoto.layer.cornerRadius = imagePhoto.frame.width / 2
        imagePhoto.sd_setImage(with: URL(string: "https://medias.spotern.com/spots/w640/238/238522-1570699012.jpg"), placeholderImage: Media.instance.getImage(withImage: .placeholderSquare))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
