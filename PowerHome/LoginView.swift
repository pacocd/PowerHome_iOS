//
//  LoginView.swift
//  PowerHome
//
//  Created by Francisco Javier Chacon de Dios on 10/02/18.
//  Copyright © 2018 Francisco Javier Chacon de Dios. All rights reserved.
//

import UIKit

/// Login view to be used in
class LoginView: UIView {

    lazy var usernameLabel: UILabel = {
        let label: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        label.text = "Username"
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

    lazy var usernameTextField: UITextField = {
        let textField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        textField.placeholder = "user@example.com"
        textField.autocorrectionType = .no
        textField.keyboardType = .emailAddress
        textField.autocapitalizationType = .none
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    lazy var passwordTextField: UITextField = {
        let textField: UITextField = UITextField(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        textField.autocorrectionType = .no
        textField.autocapitalizationType = .none
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(usernameLabel)
        addSubview(usernameTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}

// MARK: - AutoLayout
extension LoginView {

    override func updateConstraints() {
        super.updateConstraints()

        let usernameLabelHorizontalConstraints: [NSLayoutConstraint] = NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-15-[usernameLabel]-15-|",
            options: .alignAllBottom,
            metrics: nil,
            views: ["usernameLabel": usernameLabel])
        let verticalElementsConstraints: [NSLayoutConstraint] = NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-30-[usernameLabel]-15-[usernameTextField]-30-[passwordLabel]-15-[passwordTextField]",
            options: .alignAllLeading,
            metrics: nil,
            views: [
                "usernameLabel": usernameLabel,
                "usernameTextField": usernameTextField,
                "passwordLabel": passwordLabel,
                "passwordTextField": passwordTextField
            ])
        let usernameTextFieldEqualWidthsToUsernameLabelConstraints: [NSLayoutConstraint] = NSLayoutConstraint.constraints(
            withVisualFormat: "[usernameTextField(==usernameLabel)]",
            options: .alignAllCenterX,
            metrics: nil,
            views: [
            "usernameLabel": usernameLabel,
            "usernameTextField": usernameTextField
            ])
        let passwordLabelEqualWidthsToUsernameLabelConstraints: [NSLayoutConstraint] = NSLayoutConstraint.constraints(
            withVisualFormat: "[passwordLabel(==usernameLabel)]",
            options: .alignAllCenterX,
            metrics: nil,
            views: [
                "usernameLabel": usernameLabel,
                "passwordLabel": passwordLabel
            ])
        let passwordTextFieldTextFieldEqualWidthsToUsernameLabelConstraints: [NSLayoutConstraint] = NSLayoutConstraint.constraints(
            withVisualFormat: "[passwordTextField(==usernameLabel)]",
            options: .alignAllCenterX,
            metrics: nil,
            views: [
                "usernameLabel": usernameLabel,
                "passwordTextField": passwordTextField
            ])
        addConstraints(usernameLabelHorizontalConstraints)
        addConstraints(verticalElementsConstraints)
        addConstraints(usernameTextFieldEqualWidthsToUsernameLabelConstraints)
        addConstraints(passwordLabelEqualWidthsToUsernameLabelConstraints)
        addConstraints(passwordTextFieldTextFieldEqualWidthsToUsernameLabelConstraints)
    }
}
