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
import Media

// MARK: - Protocol

public protocol CategoryViewControllerDelegate {
}

// MARK: - CategoryViewController

final public class CategoryViewController: UIViewController {
    
    public init() {
        super.init(nibName: "CategoryView", bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public var screenName: String? { get { return "Category" } }
    public var tapFlowInteractor: FlowInteractorProtocol?
    public var delegate: CategoryViewControllerDelegate?
    
    // MARK: Properties

    @IBOutlet weak var collectionView: UICollectionView!
    
    var presenter: CategoryViewPresenter!
    
    // MARK: Lifecycle
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        CategoryPresenter.config(withCategoryViewController: self)
        
        presenter.setupView()
    }
}

// MARK: - CatgoryView

extension CategoryViewController: CategoryView {
    func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UINib(nibName: "CategoryCell", bundle: Bundle(for: type(of: self))), forCellWithReuseIdentifier: "categoryCell")
    }
}

extension CategoryViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath)
        return cell
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width / 4, height: (self.view.frame.width / 4) + 30)
    }
}
