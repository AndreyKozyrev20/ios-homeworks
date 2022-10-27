//
//  PostViewController.swift
//  Navigation
//
//  Created by Андрей Козырев  on 23.10.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray2
       
        title = postTitle.title
        
        let infoButton = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(tapOnInfoButton))
        
        navigationItem.rightBarButtonItem = infoButton
    }
    
    @objc func tapOnInfoButton() {
        let info = InfoViewController()
        navigationController?.pushViewController(info, animated: true)
    }
}
