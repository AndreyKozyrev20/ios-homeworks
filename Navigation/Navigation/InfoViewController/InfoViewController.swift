//
//  SwiftUIView.swift
//  Navigation
//
//  Created by Андрей Козырев  on 23.10.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    let alertController = UIAlertController(title: "ALERT!", message: "msg", preferredStyle: .alert)
    
    private let alertButton: UIButton = {
        let button = UIButton()
        button.setTitle("Alert!", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        view.addSubview(alertButton)
        alertButton.frame = CGRect(x: 20, y: 120, width: 100, height: 50)
        addTarget()
        setupAlertConfiguration()
    }
    
    func addTarget() {
        alertButton.addTarget(self, action: #selector(tapOnButton), for: .touchUpInside)
    }
    
    @objc func tapOnButton() {
        self.present(alertController,animated: true, completion: nil)
    }
    
    func setupAlertConfiguration() {
        let action = UIAlertAction(title: "OK", style: .default) {
            _ in print("Bye")
        }
        alertController.addAction(action)
    }
}
