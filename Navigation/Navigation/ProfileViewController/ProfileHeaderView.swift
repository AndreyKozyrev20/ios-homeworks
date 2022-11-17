//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Андрей Козырев  on 17.11.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
   
    
    let profileAvatar: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "person.circle.fill"))
        image.layer.frame = CGRect(x: 16, y: 16, width: 100, height: 100)
        image.layer.borderWidth = 3
        image.layer.masksToBounds = false
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.cornerRadius = image.frame.height/2
        image.clipsToBounds = true
        image.backgroundColor = UIColor.lightGray
        return image
    }()
    
    let statusButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 4
        button.backgroundColor = .blue
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.shadowOffset.width = 4
        button.layer.shadowOffset.height = 4
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7
        button.layer.shadowColor = UIColor.black.cgColor
        button.frame = CGRect(x: 16, y: 132, width: UIScreen.main.bounds.width - 32, height: 50)
        return button
    }()
    
    let profileName: UILabel = {
        let text = UILabel()
        text.text = "Default Name"
        text.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        text.textColor = .black
        text.frame = CGRect(x:132, y: 27, width: 200, height: 15)
        return text
    }()
    
    let status: UITextField = {
        let text = UITextField()
        text.text = "Waiting for something..."
        text.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        text.textColor = .darkGray
        text.frame = CGRect(x:132, y: 98, width: 200, height: 15)
        return text
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .lightGray
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.addSubview(profileAvatar)
        self.addSubview(profileName)
        self.addSubview(statusButton)
        self.addSubview(status)
        tapOnStatusButton()
    }
    
    func tapOnStatusButton() {
        statusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
 
    @objc
    func buttonPressed() {
        print(status.text ?? "no text in status field")
    }
}
