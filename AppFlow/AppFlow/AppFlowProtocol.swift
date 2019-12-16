//
//  AppFlowProtocol.swift
//  AppFlow
//
//  Created by Fadilah Hasan on 11/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

import UIKit

public protocol AppFlowProtocol {
    
    var childCoordinators: [AppFlowProtocol] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
