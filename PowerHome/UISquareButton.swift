//
//  UISquareButton.swift
//  PowerHome
//
//  Created by Francisco Javier Chacon de Dios on 11/02/18.
//  Copyright © 2018 Francisco Javier Chacon de Dios. All rights reserved.
//

import UIKit

class UISquareButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setLayout()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setLayout()
    }

    convenience init(buttonType: UIButtonType) {
        self.init(type: .system)
        setLayout()
    }

    func setLayout() {
        setTitleColor(.white, for: .normal)
        setTitleColor(.primaryBlue, for: .highlighted)
        backgroundColor = .primaryDarkBlue
        layer.cornerRadius = 5
        translatesAutoresizingMaskIntoConstraints = false
    }

}
