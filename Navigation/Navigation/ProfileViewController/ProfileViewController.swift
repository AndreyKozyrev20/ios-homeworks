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
        self.setupUI()
    }
    
    func setupNavigationBar() {
        self.navigationController?.navigationBar.topItem?.title = "Profile"
    }
    
    private func setupUI() {
        
        self.view.addSubview(headerView)
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 220)
        ])
        
        
    }
}
