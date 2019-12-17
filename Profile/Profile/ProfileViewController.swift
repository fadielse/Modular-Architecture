//
//  ProfileViewController.swift
//  Profile
//
//  Created by Fadilah Hasan on 16/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

import Foundation
import UIKit

import FLXFlow

// MARK: - ProfileViewController

final public class ProfileViewController: UIViewController {
    
    public init() {
        super.init(nibName: "ProfileView", bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public var screenName: String? { get { return "Profile" } }
    public var tapFlowInteractor: FlowInteractorProtocol?
    
    // MARK: Properties
    
    var presenter: ProfileViewPresenter!
    
    // MARK: Lifecycle
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        ProfilePresenter.config(withProfileViewController: self)
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - ProfileView

extension ProfileViewController: ProfileView {
    // TODO: implement view methods
}
