//
//  TabBarController.swift
//  Navigation
//
//  Created by Андрей Козырев  on 23.10.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    var feedNC: UINavigationController!
    var profileNC: UINavigationController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        feedNC = UINavigationController.init(rootViewController: FeedViewController())
        profileNC = UINavigationController.init(rootViewController: ProfileViewController())
        
        self.viewControllers = [feedNC, profileNC]
        
        let item1 = UITabBarItem(title: "Feed", image: UIImage(systemName: "folder"), tag: 0)
        let item2 = UITabBarItem(title: "Profile", image: UIImage(systemName: "folder.fill"), tag: 1)
        
        feedNC.tabBarItem = item1
        profileNC.tabBarItem = item2
        
        UITabBar.appearance().tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        UITabBar.appearance().backgroundColor = .systemGray4
    }
    
}

extension TabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }
}
