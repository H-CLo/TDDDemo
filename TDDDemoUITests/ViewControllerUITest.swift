//
//  ViewControllerUITest.swift
//  TDDDemoUITests
//
//  Created by Hung Chang Lo on 2018/1/4.
//  Copyright © 2018年 Hung Chang Lo. All rights reserved.
//

import XCTest

class ViewControllerUITest: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTapNumberButtonIncrementsScore() -> Void {
        
        let app = XCUIApplication()
        
        // Go to the Identity Inspector. Scroll down to the Accessibility section, and make sure Accessibility is enabled.
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapButtonIncrementsScore() -> Void {
        
        let app = XCUIApplication()
        
        var newScore: String = ""
        
        // Go to the Identity Inspector. Scroll down to the Accessibility section, and make sure Accessibility is enabled.
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
        
        let champagneButton = app.buttons["champagneButton"]
        
        champagneButton.tap()
        newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
        
        let spaceButton = app.buttons["spaceButton"]
        
        spaceButton.tap()
        newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
        
        let lightningButton = app.buttons["lightningButton"]
        
        lightningButton.tap()
        newScore = numberButton.label
        XCTAssertEqual(newScore, "4")
    }
    
}
