//
//  BaseView.swift
//  PowerHome
//
//  Created by Francisco Javier Chacon de Dios on 11/02/18.
//  Copyright © 2018 Francisco Javier Chacon de Dios. All rights reserved.
//

import UIKit

class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}

extension BaseView: UITextFieldDelegate {

    @objc func dismissKeyboard(_ sender: Any) {
        endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        dismissKeyboard(Any.self)
        return true
    }

}
