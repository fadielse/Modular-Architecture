//
//  MainAppFlowCoordinator.swift
//  AppFlow
//
//  Created by Fadilah Hasan on 11/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

import UIKit
import HomeFlow

open class MainAppFlowCoordinator: AppFlowProtocol {
    
    public var childCoordinators = [AppFlowProtocol]()
    public var navigationController: UINavigationController
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    public func start() {
//        let vc = 
//        navigationController.pushViewController(vc, animated: false)
    }
}
