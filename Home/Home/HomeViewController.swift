//
//  HomeViewController.swift
//  Home
//
//  Created by Fadilah Hasan on 11/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

import Foundation
import UIKit

// MARK: - HomeViewController

final public class HomeViewController: UIViewController {
    
    public var screenName: String? { get { return "Home" } }
    
    // MARK: Properties
    
    var presenter: HomeViewPresenter!
    
    // MARK: Lifecycle
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        HomePresenter.config(withHomeViewController: self)
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

// MARK: - HomeView

extension HomeViewController: HomeView {
    // TODO: implement view methods
}

public extension  HomeViewController {
    
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboardBundle = Bundle(for: self)
        let storyboard = UIStoryboard(name: "Home", bundle: storyboardBundle)

        if #available(iOS 13.0, *) {
            return storyboard.instantiateViewController(identifier: id) as! Self
        } else {
            return storyboard.instantiateViewController(withIdentifier: id) as! Self
        }
    }
}
