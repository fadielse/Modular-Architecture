//
//  AppFlowCoordinator.swift
//  AppFlow
//
//  Created by Fadilah Hasan on 11/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

import UIKit

public protocol AppFlowCoordinator {
    
    var childCoordinators: [AppFlowCoordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
