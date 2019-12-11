//
//  MainAppFlowCoordinator.swift
//  AppFlow
//
//  Created by Fadilah Hasan on 11/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

import UIKit
import Home

open class MainAppFlowCoordinator: AppFlowCoordinator {
    
    public var childCoordinators = [AppFlowCoordinator]()
    public var navigationController: UINavigationController
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    public func start() {
        let vc = HomeViewController.instantiate()
        navigationController.pushViewController(vc, animated: false)
    }
}
