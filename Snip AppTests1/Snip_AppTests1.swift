//
//  Snip_AppTests1.swift
//  Snip AppTests1
//
//  Created by Chandu .. on 11/22/24.
//

import XCTest
@testable import Snip_App

final class Snip_AppTests1: XCTestCase {
    var loginViewController: LoginViewController!
    
    override func setUpWithError() throws {
        loginViewController = LoginViewController()
    }
    
    override func tearDownWithError() throws {
        loginViewController = nil
    }
    func testVaildCredentials() {
        let resut = loginViewController.isValidCredentials(username: "chandra", password: "k")
        XCTAssertEqual(resut, true)
    }
    
    func testInValidCredentials() {
        let result = loginViewController.isValidCredentials(username: "Chandra", password: "Hi")
        XCTAssertNotEqual(result, true)
    }
}
