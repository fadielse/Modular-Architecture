//
//  CategoryPresenter.swift
//  Category
//
//  Created by Fadilah Hasan on 16/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol CategoryViewPresenter: class {
    init(view: CategoryView)
    
    func setupView()
}

protocol CategoryView: class {
    func setupCollectionView()
}

class CategoryPresenter: CategoryViewPresenter {
    
    static func config(withCategoryViewController vc: CategoryViewController) {
        let presenter = CategoryPresenter(view: vc)
        vc.presenter = presenter
    }
    
    let view: CategoryView
    
    required init(view: CategoryView) {
        self.view = view
    }
    
    func setupView() {
        view.setupCollectionView()
    }
}
