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

    lazy var loginButton: UISquareButton = {
        let button: UISquareButton = UISquareButton(buttonType: .system)
        button.setTitle("Login", for: .normal)
        return button
    }()

    lazy var signUpButton: UISquareButton = {
        let button: UISquareButton = UISquareButton(buttonType: .system)
        button.setTitle("Sign Up", for: .normal)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(usernameLabel)
        addSubview(usernameTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(loginButton)
        addSubview(signUpButton)
        let dismissKeyboardTapGestureRecognizer: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard(_:)))
        addGestureRecognizer(dismissKeyboardTapGestureRecognizer)
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
            withVisualFormat: "V:|-30-[usernameLabel]-15-[usernameTextField]-30-[passwordLabel]-15-[passwordTextField]-40-[loginButton]-15-[signUpButton]",
            options: .alignAllLeading,
            metrics: nil,
            views: [
                "usernameLabel": usernameLabel,
                "usernameTextField": usernameTextField,
                "passwordLabel": passwordLabel,
                "passwordTextField": passwordTextField,
                "loginButton": loginButton,
                "signUpButton": signUpButton
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
        let loginButtonEqualWidthsToUsernameLabelConstraints: [NSLayoutConstraint] = NSLayoutConstraint.constraints(
            withVisualFormat: "[loginButton(==usernameLabel)]",
            options: .alignAllCenterX,
            metrics: nil,
            views: [
                "usernameLabel": usernameLabel,
                "loginButton": loginButton
            ])
        let signUpButtonEqualWidthsToUsernameLabelConstraints: [NSLayoutConstraint] = NSLayoutConstraint.constraints(
            withVisualFormat: "[signUpButton(==usernameLabel)]",
            options: .alignAllCenterX,
            metrics: nil,
            views: [
                "usernameLabel": usernameLabel,
                "signUpButton": signUpButton
            ])
        let loginButtonHeightConstraint: NSLayoutConstraint = NSLayoutConstraint(item: loginButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 40)
        let signUpButtonHeighConstraint: NSLayoutConstraint = NSLayoutConstraint(item: signUpButton, attribute: .height, relatedBy: .equal, toItem: loginButton, attribute: .height, multiplier: 1, constant: 0)

        addConstraints(usernameLabelHorizontalConstraints)
        addConstraints(verticalElementsConstraints)
        addConstraints(usernameTextFieldEqualWidthsToUsernameLabelConstraints)
        addConstraints(passwordLabelEqualWidthsToUsernameLabelConstraints)
        addConstraints(passwordTextFieldTextFieldEqualWidthsToUsernameLabelConstraints)
        addConstraints(loginButtonEqualWidthsToUsernameLabelConstraints)
        addConstraints(signUpButtonEqualWidthsToUsernameLabelConstraints)
        addConstraints([loginButtonHeightConstraint, signUpButtonHeighConstraint])
    }
}

extension LoginView: UITextFieldDelegate {

    @objc func dismissKeyboard(_ sender: Any) {
        endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        dismissKeyboard(Any.self)
        return true
    }

}
