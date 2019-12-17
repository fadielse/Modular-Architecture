//
//  AppFlowController.swift
//  AppFlow
//
//  Created by Fadilah Hasan on 17/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

// Common
import FLXFlow

// Flows
import HomeFlow

final public class AppFlowController: StackedFlowController {
    
    // MARK: - Initialisers
    
    public init?() {
        
        // Assign the flow controller's navigation controller
        let navigationController = UINavigationController()
        
        // Set properties
        navigationController.isToolbarHidden = true
        navigationController.isNavigationBarHidden = true

        // Initialise the super class
        super.init(rootNavigationController: navigationController, nibName: nil, bundle: nil)
        
        // Assign the Flow Event Delegate
        self.flowActionDelegate = self
        
        guard let homeFlowController = HomeFlowController() else { return nil }
        addChildFlowController(homeFlowController)
        rootNavigationController.show(homeFlowController, sender: nil)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension AppFlowController: FlowActionDelegate {
    
}
