//
//  UserListController.swift
//  Navigation
//
//  Created by Андрей Козырев  on 23.10.2022.
//

import UIKit

class FeedViewController: UIViewController {
   
    private let showPostButton: UIButton = {
        let button = UIButton()
        button.setTitle("NEW POST", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        view.addSubview(showPostButton)
        showPostButton.frame = CGRect(x: 20, y: 120, width: 100, height: 50)
        addTarget()
    }
    
    func addTarget () {
        showPostButton.addTarget(self, action: #selector(tapOnButton), for: .touchUpInside)
    }
    
    @objc
    func tapOnButton() {
        let postView = PostViewController()
        navigationController?.pushViewController(postView, animated: true)
    }
}

struct Post {
    var title: String
}

var postTitle = Post(title: "Swift News")

