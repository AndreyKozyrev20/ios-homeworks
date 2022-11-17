//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by Андрей Козырев  on 23.10.2022.
//

import SwiftUI

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        loadProfileView()
    }
    
    func loadProfileView () {
        
        if let profileView = Bundle.main.loadNibNamed("ProfileView", owner: nil)?.first as? ProfileView {
            profileView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height:UIScreen.main.bounds.height)
            view.addSubview(profileView)
        }
    }
}
