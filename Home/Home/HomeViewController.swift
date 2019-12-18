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
import Media

// MARK: - Protocol

public protocol HomeViewControllerDelegate {
}

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
    public var delegate: HomeViewControllerDelegate?
    
    // MARK: Properties
    
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: HomeViewPresenter!
    
    // MARK: Lifecycle
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        HomePresenter.config(withHomeViewController: self)
        
        presenter.setupView()
    }
}

// MARK: - HomeView

extension HomeViewController: HomeView {
    func setupNavigationBar() {
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 255.0/255.0, green: 108.0/255.0, blue: 112.0/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.isTranslucent = true
        let imageLogo = Media.instance.getImage(withImage: .kodingkitaLogo)
        let imageView = UIImageView(image: imageLogo)
        imageView.frame = CGRect(x: 0, y: 0, width: 131, height: 35)
        imageView.contentMode = .scaleAspectFit
        let leftBarItem = UIBarButtonItem(customView: imageView)
        self.navigationItem.leftBarButtonItem = leftBarItem
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableView.automaticDimension
        
        tableView.register(UINib(nibName: "ArticleCell", bundle: Bundle(for: type(of: self))), forCellReuseIdentifier: "articleCell")
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "articleCell", for: indexPath) as? ArticleCell {
            return cell
        }
        
        return UITableViewCell()
    }
}
