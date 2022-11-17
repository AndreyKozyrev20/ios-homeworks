//
//  ProfileController.swift
//  Navigation
//
//  Created by Андрей Козырев  on 23.10.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var headerView = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray6
        self.setupNavigationBar()
        self.viewWillLayoutSubviews()
    }
    
    override func viewWillLayoutSubviews() {
        self.view.addSubview(headerView)
        self.headerView.frame = view.safeAreaLayoutGuide.layoutFrame
    }
    
    func setupNavigationBar() {
        self.navigationController?.navigationBar.topItem?.title = "Profile"
    }
    
}
