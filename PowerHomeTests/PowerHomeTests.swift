//
//  PowerHomeTests.swift
//  PowerHomeTests
//
//  Created by Francisco Javier Chacon de Dios on 10/02/18.
//  Copyright © 2018 Francisco Javier Chacon de Dios. All rights reserved.
//

import XCTest
@testable import PowerHome

class PowerHomeTests: XCTestCase {

    var loginViewController: LoginViewController?
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.

        loginViewController = LoginViewController()

        _ = loginViewController?.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testViewControllerInitializesProperly() {
        XCTAssertNotNil(loginViewController)
    }

}
