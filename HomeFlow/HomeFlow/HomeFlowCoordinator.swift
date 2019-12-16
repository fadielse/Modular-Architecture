//
//  HomeFlowCoordinator.swift
//  HomeFlow
//
//  Created by Fadilah Hasan on 11/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

import UIKit

import AppFlow
import Home
import Category
import Profile

final public class HomeFlowCoordinator: AppFlowProtocol {
    
    public var childCoordinators = [AppFlowProtocol]()
    public var navigationController: UINavigationController
    var tabBarController: HomeNavigationController
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.tabBarController = HomeNavigationController()
        self.tabBarController.delegate = self.tabBarController
    }
    
    public func start() {
        let home = HomeViewController()
        let homeTabBarItem = UITabBarItem(title: "Home", image: nil, tag: 0)
        home.tabBarItem = homeTabBarItem
        
        let category = CategoryViewController()
        let categoryTabBarItem = UITabBarItem(title: "Category", image: nil, tag: 1)
        category.tabBarItem = categoryTabBarItem
        
        let profile = ProfileViewController()
        let profileTabBarItem = UITabBarItem(title: "Profile", image: nil, tag: 2)
        profile.tabBarItem = profileTabBarItem
        
        tabBarController.viewControllers = [home, category, profile]
        navigationController.pushViewController(tabBarController, animated: false)
    }
}
