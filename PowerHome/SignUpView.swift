//
//  SignUpView.swift
//  PowerHome
//
//  Created by Francisco Javier Chacon de Dios on 11/02/18.
//  Copyright © 2018 Francisco Javier Chacon de Dios. All rights reserved.
//

import UIKit

class SignUpView: BaseView {

    lazy var nameLabel: UILabel = {
        let label: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        label.text = "Name"
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var emailLabel: UILabel = {
        let label: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        label.text = "Email"
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var passwordLabel: UILabel = {
        let label: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        label.text = "Password"
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var passwordConfirmationLabel: UILabel = {
        let label: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        label.text = "Password"
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var nameTextField: UITextField = {
        let textField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        textField.placeholder = "First Name and Last Name"
        textField.autocorrectionType = .no
        textField.keyboardType = .default
        textField.autocapitalizationType = .words
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.delegate = self
        return textField
    }()

    lazy var emailTextField: UITextField = {
        let textField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        textField.placeholder = "Email"
        textField.autocorrectionType = .no
        textField.keyboardType = .emailAddress
        textField.autocapitalizationType = .none
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.delegate = self
        return textField
    }()

    lazy var passwordTextField: UITextField = {
        let textField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        textField.autocorrectionType = .no
        textField.autocapitalizationType = .none
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.delegate = self
        return textField
    }()

    lazy var passwordConfirmationTextField: UITextField = {
        let textField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        textField.autocorrectionType = .no
        textField.autocapitalizationType = .none
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.delegate = self
        return textField
    }()

    lazy var signUpButton: UISquareButton = {
        let button: UISquareButton = UISquareButton(buttonType: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign Up", for: .normal)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(nameLabel)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}

// MARK: - AutoLayout
extension SignUpView {

    override func updateConstraints() {
        super.updateConstraints()

        let nameLabelHorizontalConstraints: [NSLayoutConstraint] = NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[nameLabel]-15-|", options: .alignAllBottom, metrics: nil, views: ["nameLabel": nameLabel])
        let verticalSpacingConstraints: [NSLayoutConstraint] = NSLayoutConstraint.constraints(withVisualFormat: "V:|-15-[nameLabel]", options: .alignAllLeading, metrics: nil, views: ["nameLabel": nameLabel])

        addConstraints(nameLabelHorizontalConstraints)
        addConstraints(verticalSpacingConstraints)
    }

}
