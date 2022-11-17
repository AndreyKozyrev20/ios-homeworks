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
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.cornerRadius = 50
        image.backgroundColor = UIColor.lightGray
        image.translatesAutoresizingMaskIntoConstraints = false
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
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let profileName: UILabel = {
        let text = UILabel()
        text.text = "Default Name"
        text.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        text.textColor = .black
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let status: UITextField = {
        let text = UITextField()
        text.text = "Waiting for something..."
        text.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        text.textColor = .darkGray
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    let statusButton2: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 4
        button.backgroundColor = .cyan
        button.setTitle("Status!", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.shadowOffset.width = 4
        button.layer.shadowOffset.height = 4
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7
        button.layer.shadowColor = UIColor.black.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        self.addSubview(profileAvatar)
        self.addSubview(profileName)
        self.addSubview(statusButton)
        self.addSubview(statusButton2)
        self.addSubview(status)
        self.tapOnStatusButton()
        self.tapOnStatusButton2()
        
        NSLayoutConstraint.activate([
            self.profileAvatar.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            self.profileAvatar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            self.profileAvatar.trailingAnchor.constraint(equalTo: self.leadingAnchor, constant: 116),
            self.profileAvatar.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 116),

            self.profileName.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 27),
            self.profileName.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 132),
            self.profileName.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.profileName.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 42),

            self.status.topAnchor.constraint(equalTo: self.statusButton2.topAnchor, constant: -49),
            self.status.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 132),
            self.status.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.status.bottomAnchor.constraint(equalTo: self.self.statusButton2.topAnchor, constant: -34),

            self.statusButton.topAnchor.constraint(equalTo: self.profileAvatar.bottomAnchor, constant: 16),
            self.statusButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            self.statusButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            self.statusButton.bottomAnchor.constraint(equalTo: self.profileAvatar.bottomAnchor, constant: 66),
            
            self.statusButton2.topAnchor.constraint(equalTo: self.profileAvatar.bottomAnchor, constant: 16),
            self.statusButton2.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.statusButton2.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.statusButton2.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    func tapOnStatusButton() {
        self.statusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    func tapOnStatusButton2() {
        self.statusButton2.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
 
 
    @objc
    func buttonPressed() {
        print(status.text ?? "no text in status field")
    }
}

