//
//  HomePresenter.swift
//  Home
//
//  Created by Fadilah Hasan on 11/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol HomeViewPresenter: class {
    init(view: HomeView)
    // TODO: Declare view presenter methods
}

protocol HomeView: class {
    // TODO: Declare view methods
}

class HomePresenter: HomeViewPresenter {
    
    static func config(withHomeViewController vc: HomeViewController) {
        let presenter = HomePresenter(view: vc)
        vc.presenter = presenter
    }
    
    let view: HomeView
    
    required init(view: HomeView) {
        self.view = view
    }
    
    // TODO: Implement view presenter methods
}
