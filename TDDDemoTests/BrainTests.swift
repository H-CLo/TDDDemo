//
//  BrainTests.swift
//  TDDDemoTests
//
//  Created by Hung Chang Lo on 2018/1/4.
//  Copyright © 2018年 Hung Chang Lo. All rights reserved.
//

import XCTest

// MARK: - import our project
@testable import TDDDemo

class BrainTests: XCTestCase {
    
    // MARK: - Default
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    // MARK: - Write test first, the aim is to let these warnings guide us to what code we need to write next
    
    func testIsDivisibleByThree() -> Void {
        
        let brain = Brain()
        let result = brain.isDivisionByThree(number: 3)
        XCTAssertEqual(result, true)
    }
    
    // After refactor
    
    func testIsDivisibleBy() -> Void {
        
        let brain = Brain()
        let result = brain.isDivisibleBy(divisor: 7, number: 7)
        XCTAssertEqual(result, true)
    }
    
    func testIsDivisionByFive() -> Void {
        
        let brain = Brain()
        let result = brain.isDivisionByFive(number: 5)
        XCTAssertEqual(result, true)
        
        let result2 = brain.isDivisionByFive(number: 4)
        XCTAssertEqual(result2, false)
    }
    
    
}
