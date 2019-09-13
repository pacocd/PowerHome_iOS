//
//  SignUpViewController.swift
//  PowerHome
//
//  Created by Francisco Javier Chacon de Dios on 11/02/18.
//  Copyright © 2018 Francisco Javier Chacon de Dios. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    let signUpView: SignUpView = SignUpView()
    lazy var cancelBarButton: UIBarButtonItem = {
        let cancelButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(dismiss(_:)))
        return cancelButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        viewRespectsSystemMinimumLayoutMargins = false
        navigationItem.leftBarButtonItem = cancelBarButton
        navigationItem.title = "Sign Up"
        view.addSubview(signUpView)
        // Do any additional setup after loading the view.
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        let signUpViewHorizontalConstraints: [NSLayoutConstraint] = NSLayoutConstraint.constraints(withVisualFormat: "H:|-[view]-|", options: .alignAllCenterX, metrics: nil, views: ["view": signUpView])
        let signUpVerticalConstraints: [NSLayoutConstraint] = NSLayoutConstraint.constraints(withVisualFormat: "V:|-[view]-|", options: .alignAllCenterY, metrics: nil, views: ["view": signUpView])

        view.addConstraints(signUpVerticalConstraints)
        view.addConstraints(signUpViewHorizontalConstraints)
    }

}

extension SignUpViewController {

    @objc func dismiss(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }

}
