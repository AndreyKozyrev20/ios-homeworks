//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by Андрей Козырев  on 23.10.2022.
//

import SwiftUI

class ProfileView: UIView {
    
    @IBOutlet weak var profileAvatar: UIImageView! {
        didSet {
            profileAvatar.image = UIImage(named: "avatar")
            profileAvatar.contentMode = .scaleToFill
        }
    }
    
    @IBOutlet weak var profileName: UILabel! {
        didSet {
            profileName.text = "Andrey"
        }
    }
    
    @IBOutlet weak var profileBday: UILabel! {
        didSet {
            profileBday.text = "22.09.1996"
        }
    }
    
    @IBOutlet weak var profileCity: UILabel! {
        didSet {
            profileCity.text = "St.Petersburg"
        }
    }
    
    @IBOutlet weak var profileInfo: UITextView!
}


