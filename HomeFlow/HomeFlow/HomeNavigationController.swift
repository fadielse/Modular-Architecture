//
//  HomeNavigationController.swift
//  HomeFlow
//
//  Created by Fadilah Hasan on 16/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

import UIKit

final public class HomeNavigationController: UITabBarController {}

// MARK: - UITabBarControllerDelegate conformance

extension HomeNavigationController: UITabBarControllerDelegate {

    @objc(tabBarController:didSelectViewController:)
    public func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        
        tabBarController.view?.layoutIfNeeded()
        
    }
}
