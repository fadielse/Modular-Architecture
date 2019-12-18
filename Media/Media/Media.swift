//
//  Media.swift
//  Media
//
//  Created by Fadilah Hasan on 18/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

import UIKit

public final class Media {
    public enum Images: String {
        case kodingkitaLogo = "kodingkita-logo"
        case placeholderSquare = "placeholder-square"
    }
    
    private init() {}
    
    public static let instance = Media()
    
    public func getImage(withImage image: Images) -> UIImage {
        return UIImage(named: image.rawValue, in: Bundle(for: type(of: self)), compatibleWith: nil)!
    }
}
