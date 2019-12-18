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
import Media

// MARK: - Protocol

public protocol ProfileViewControllerDelegate {
}

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
    public var delegate: ProfileViewControllerDelegate?
    
    // MARK: Properties
    
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: ProfileViewPresenter!
    
    // MARK: Lifecycle
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        ProfilePresenter.config(withProfileViewController: self)
        presenter.setupView()
    }
}

// MARK: - ProfileView

extension ProfileViewController: ProfileView {
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 120
        
        tableView.register(UINib(nibName: "HeaderProfileCell", bundle: Bundle(for: type(of: self))), forCellReuseIdentifier: "headerProfileCell")
    }
}

extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "headerProfileCell", for: indexPath)
        
        return cell
    }
}
