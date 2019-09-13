//
//  LoginViewController.swift
//  PowerHome
//
//  Created by Francisco Javier Chacon de Dios on 10/02/18.
//  Copyright © 2018 Francisco Javier Chacon de Dios. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    let loginView: LoginView = LoginView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(loginView)

        loginView.signUpButton.addTarget(self, action: #selector(showSignUp), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        let loginViewHorizontalConstraints: [NSLayoutConstraint] = NSLayoutConstraint.constraints(withVisualFormat: "H:|-[loginView]-|", options: .alignAllCenterX, metrics: nil, views: ["loginView": loginView])
        let loginViewVerticalConstraints: [NSLayoutConstraint] = NSLayoutConstraint.constraints(withVisualFormat: "V:|-[loginView]-|", options: .alignAllCenterY, metrics: nil, views: ["loginView": loginView])

        view.addConstraints(loginViewVerticalConstraints)
        view.addConstraints(loginViewHorizontalConstraints)
    }

    @objc func showSignUp() {
        let navigationController: UINavigationController = UINavigationController(rootViewController: SignUpViewController())
        present(navigationController, animated: true, completion: nil)
    }

}
