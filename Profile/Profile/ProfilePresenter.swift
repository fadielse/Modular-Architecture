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
    
    func setupView()
}

protocol ProfileView: class {
    func setupTableView()
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
    
    func setupView() {
        view.setupTableView()
    }
}
