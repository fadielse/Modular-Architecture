//
//  HomeViewController.swift
//  Home
//
//  Created by Fadilah Hasan on 11/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

import Foundation
import UIKit

import FLXFlow

// MARK: - HomeViewController

final public class HomeViewController: UIViewController {
    
    public init() {
        super.init(nibName: "HomeView", bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public var screenName: String? { get { return "Home" } }
    public var tapFlowInteractor: FlowInteractorProtocol?
    
    // MARK: Properties
    
    @IBOutlet weak var homeLabel: UILabel!
    
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
