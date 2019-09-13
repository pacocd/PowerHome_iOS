//
//  LoginTests.swift
//  PowerHomeTests
//
//  Created by Francisco Javier Chacon de Dios on 11/02/18.
//  Copyright © 2018 Francisco Javier Chacon de Dios. All rights reserved.
//

import XCTest
@testable import PowerHome

class LoginTests: XCTestCase {

    var loginViewController: LoginViewController?
    override func setUp() {
        super.setUp()

        loginViewController = LoginViewController()

        _ = loginViewController?.view
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        loginViewController = nil
    }

    func loginViewControllerInitializesProperly() {
        loginViewController?.loginView.dismissKeyboard(Any.self)
        XCTAssertNotNil(loginViewController)
    }

    func testConformsUITextFieldDelegateProtocolShouldBeTrue() {
        XCTAssert((loginViewController?.loginView.conforms(to: UITextFieldDelegate.self))!)
    }

    func testTextFieldShouldReturnTrueValue() {
        XCTAssert((loginViewController?.loginView.textFieldShouldReturn(UITextField()))!)
    }

}
