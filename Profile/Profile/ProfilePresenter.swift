//
//  ProfilePresenter.swift
//  Profile
//
//  Created by Fadilah Hasan on 16/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol ProfileViewPresenter: class {
    init(view: ProfileView)
    // TODO: Declare view presenter methods
}

protocol ProfileView: class {
    // TODO: Declare view methods
}

class ProfilePresenter: ProfileViewPresenter {
    
    static func config(withProfileViewController vc: ProfileViewController) {
        let presenter = ProfilePresenter(view: vc)
        vc.presenter = presenter
    }
    
    let view: ProfileView
    
    required init(view: ProfileView) {
        self.view = view
    }
    
    // TODO: Implement view presenter methods
}
