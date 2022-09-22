//
//  UITests.swift
//  SplitoUITests
//
//  Created by Gul Rose on 22/09/2022.
//

import Foundation
import XCTest

class SplitoUITests: XCTestCase {
    
    let splitHomePO = HomeScreen()
    
    override func setUp() {
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        XCUIApplication().terminate()
    }
    
    // Sample for your first test case.
    func testWhenApplicationDefaultStateWhenApplicationLaunched() throws {
    }
}
