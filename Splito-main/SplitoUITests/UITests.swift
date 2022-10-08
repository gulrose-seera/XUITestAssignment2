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
        var isElementFound = splitHomePO.waitToScreenForLoad();
        XCTAssertTrue(isElementFound, "Homepage is not loaded")
        let defaultCount = splitHomePO.getPersonCount();
        XCTAssertEqual(defaultCount, 2, "Person Value should be 2");
    }
    
    // Test Increment button works fine
    func testIncrementPersonBtn() throws {
        let defaultCount = splitHomePO.getPersonCount();
        splitHomePO.incrementButton.tap();
        let incrementedCount = splitHomePO.getPersonCount();
        XCTAssertEqual(incrementedCount, defaultCount+1, "Person Value should be 3 after incremenet");
    }
    
    // Test Increment button works fine
    func testDecrementPersonBtn() throws {
        let currentCount = splitHomePO.getPersonCount();
        splitHomePO.decrementButton.tap();
        let decrementButton = splitHomePO.getPersonCount();
                XCTAssertEqual(decrementButton, currentCount-1, "Person Value should be 2 after decrement");
    }
}
