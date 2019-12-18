//
//  HomeFlowController.swift
//  HomeFlow
//
//  Created by Fadilah Hasan on 17/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

// Common
import FLXFlow
import SharedEntities

// Features
import Home
import Category
import Profile

final public class HomeFlowController: TabbedFlowController {
    
    // MARK: - Initialisers
    
    public init?() {
        
        // Assign the flow controller's navigation controller
        let navigationController = HomeNavigationController()
        
        // Assign the UITabBarControllerDelegate
        navigationController.delegate = navigationController
        
        // Initialise the super class
        super.init(rootNavigationController: navigationController, nibName: nil, bundle: nil)
        
        // Assign the Flow Event Delegate
        self.flowActionDelegate = self
        
        let home = HomeViewController()
        let homeNavigation = UINavigationController(rootViewController: home)
        let category = CategoryViewController()
        category.delegate = self
        let profile = ProfileViewController()
        
        // Initialise the tbar bar items
        let homeTabItem = UITabBarItem(title: "Home", image: nil, tag: 0)
        let categoryTabItem = UITabBarItem(title: "Category", image: nil, tag: 1)
        let profileTabItem = UITabBarItem(title: "Profile", image: nil, tag: 1)
        
        // Adjust the font
        let font = UIFont.systemFont(ofSize: 14, weight: .regular)
        homeTabItem.setTitleTextAttributes([NSAttributedString.Key.font: font], for: .normal)
        categoryTabItem.setTitleTextAttributes([NSAttributedString.Key.font: font], for: .normal)
        profileTabItem.setTitleTextAttributes([NSAttributedString.Key.font: font], for: .normal)
        
        // Adjust the title position
        homeTabItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -14)
        categoryTabItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -14)
        profileTabItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -14)

        // Set the tab bar items
        homeNavigation.tabBarItem = homeTabItem
        category.tabBarItem = categoryTabItem
        profile.tabBarItem = profileTabItem
        
        // Add flow interactors
        home.tapFlowInteractor = PresentModalFeatureTapFlowInteractor(viewController: home){ tap, viewController in
            guard let viewController = viewController as? HomeViewController else { return }
            guard let flowController = viewController.flowController else { return }
            
            let originEntity = OriginEntity(featureName: "Home Feature")
            
            // Trigger a flow action on the flow controller
            flowController.flow(action: HomeFlowAction.presentModalFeatureFromHome(from: viewController, content: originEntity))
        }
        
        category.tapFlowInteractor = PresentModalFeatureTapFlowInteractor(viewController: category){ tap, viewController in
            guard let viewController = viewController as? CategoryViewController else { return }
            guard let flowController = viewController.flowController else { return }

            let originEntity = OriginEntity(featureName: "Category Feature")
            
            // Trigger a flow action on the flow controller
            flowController.flow(action: HomeFlowAction.presentModalFeatureFromCategory(from: viewController, content: originEntity))
        }
        
        profile.tapFlowInteractor = PresentModalFeatureTapFlowInteractor(viewController: profile){ tap, viewController in
            
            guard let viewController = viewController as? ProfileViewController else { return }
            guard let flowController = viewController.flowController else { return }

            let originEntity = OriginEntity(featureName: "Profile Feature")
            
            // Trigger a flow action on the flow controller
            flowController.flow(action: HomeFlowAction.presentModalFeatureFromProfile(from: viewController, content: originEntity))
        }
        
        // Add the tab bar items
        navigationController.viewControllers = [homeNavigation, category, profile]
        
        // Set which tab is selected
        navigationController.selectedIndex = 0
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeFlowController: FlowActionDelegate {
    public func process(action: FlowAction) -> Bool {
        switch action {
        case HomeFlowAction.presentModalFeatureFromHome(let feature, let content):
            presentModalFeature(from: feature, content: content)
        case HomeFlowAction.presentModalFeatureFromCategory(let feature, let content):
            presentModalFeature(from: feature, content: content)
        case HomeFlowAction.presentModalFeatureFromProfile(let feature, let content):
            presentModalFeature(from: feature, content: content)
        default: return false
        }
        
        return false
    }
    
    private func presentModalFeature(from: UIViewController, content: OriginEntity) {
        let alert = UIAlertController(title: "Wauw", message: content.featureName, preferredStyle: .alert)
        let action = UIAlertAction(title: "Siyap", style: .cancel, handler: nil)
        alert.addAction(action)
        from.present(alert, animated: true, completion: nil)
    }
}

extension HomeFlowController: CategoryViewControllerDelegate {
    public func buttonAlertTapped(from: CategoryViewController) {
        let alert = UIAlertController(title: "Wauw", message: "content.featureName", preferredStyle: .alert)
        let action = UIAlertAction(title: "Siyap", style: .cancel, handler: nil)
        alert.addAction(action)
        from.present(alert, animated: true, completion: nil)
    }
}
