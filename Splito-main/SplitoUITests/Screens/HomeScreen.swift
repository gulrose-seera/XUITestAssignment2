//
//  HomeScreen.swift
//  SplitoUITests
//
//  Created by Gul Rose on 22/09/2022.
//

import Foundation
import XCTest

struct HomeScreen {
    let application: XCUIApplication
    let billAmountField: XCUIElement
    let incrementButton: XCUIElement
    let decrementButton: XCUIElement
    let totalPersonsView: XCUIElement
    let zeroPercentButton: XCUIElement
    let tenPercentButton: XCUIElement
    let fifteenPercentButton: XCUIElement
    let twentyPercentButton: XCUIElement
    let totalBillPerPersonView: XCUIElement
    let calculateBillButton : XCUIElement
    
    init(app: XCUIApplication = XCUIApplication()) {
        application = app
        billAmountField = application.textFields[AccessibilityIdentifier.billAmountField.rawValue]
        incrementButton = application.buttons[AccessibilityIdentifier.incrementButton.rawValue]
        decrementButton = application.buttons[AccessibilityIdentifier.decrementButton.rawValue]
        totalPersonsView = application.staticTexts[AccessibilityIdentifier.totalPersonsView.rawValue]
        zeroPercentButton = application.buttons[AccessibilityIdentifier.zeroPercentButton.rawValue]
        tenPercentButton = application.buttons[AccessibilityIdentifier.tenPercentButton.rawValue]
        fifteenPercentButton = application.buttons[AccessibilityIdentifier.fifteenPercentButton.rawValue]
        twentyPercentButton = application.buttons[AccessibilityIdentifier.twentyPercentButton.rawValue]
        totalBillPerPersonView = application.staticTexts[AccessibilityIdentifier.totalBillPerPersonView.rawValue]
        calculateBillButton = application.buttons[AccessibilityIdentifier.calculateBillButton.rawValue]
    }
    
    func waitToScreenForLoad() -> Bool{
        return billAmountField.waitForExistence(timeout: 60)
    }
    
    func getPersonCount() -> Int {
        return Int(totalPersonsView.label) ?? 0
    }
    

}

extension HomeScreen {
    enum AccessibilityIdentifier: String {
        case billAmountField = "bill_entered_amount"
        case incrementButton = "increment_person"
        case decrementButton = "decrement_person"
        case totalPersonsView = "total_person_in_bill"
        case zeroPercentButton = "0_percent"
        case tenPercentButton = "10_percent"
        case fifteenPercentButton = "15_percent"
        case twentyPercentButton = "20_percent"
        case totalBillPerPersonView = "total_bill_each_person"
        case calculateBillButton = "calculate_bill_button"
    }
}
