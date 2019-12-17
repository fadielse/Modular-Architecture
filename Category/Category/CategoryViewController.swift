//
//  CategoryViewController.swift
//  Category
//
//  Created by Fadilah Hasan on 16/12/19.
//  Copyright © 2019 Fadilah Hasan. All rights reserved.
//

import Foundation
import UIKit

import FLXFlow

// MARK: - CatgoryViewController

final public class CategoryViewController: UIViewController {
    
    public init() {
        super.init(nibName: "CategoryView", bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public var screenName: String? { get { return "Category" } }
    public var tapFlowInteractor: FlowInteractorProtocol?
    
    // MARK: Properties
    
    var presenter: CategoryViewPresenter!
    
    // MARK: Lifecycle
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        CategoryPresenter.config(withCategoryViewController: self)
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - CatgoryView

extension CategoryViewController: CategoryView {
    // TODO: implement view methods
}
