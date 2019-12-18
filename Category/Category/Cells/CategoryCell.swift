//
//  categoryCell.swift
//  Category
//
//  Created by Fadilah Hasan on 18/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

import UIKit
import SDWebImage

//common
import Media

class CategoryCell: UICollectionViewCell {

    @IBOutlet weak var imageCategory: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageCategory.sd_setImage(with: URL(string: "https://image.flaticon.com/icons/png/512/919/919833.png"), placeholderImage: Media.instance.getImage(withImage: .placeholderSquare))
    }
}
