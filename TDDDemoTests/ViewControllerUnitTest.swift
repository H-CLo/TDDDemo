//
//  ViewControllerUnitTest.swift
//  TDDDemoTests
//
//  Created by Hung Chang Lo on 2018/1/4.
//  Copyright © 2018年 Hung Chang Lo. All rights reserved.
//

import XCTest
@testable import TDDDemo

// MARK: Display TDD in MVC structure

class ViewControllerUnitTest: XCTestCase {
    
    var viewController : ViewController!
    
    override func setUp() {
        super.setUp()
        
        // 可參考 https://www.natashatherobot.com/ios-testing-view-controllers-swift/
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test() -> Void {
        
        XCTAssertTrue(true)
    }
    
    func testMoveOneIncrementsScore() -> Void {
        
        viewController.play(move: 1)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    // MARK: Add game property
    
    func testHasAGame() -> Void {
        
        XCTAssertNotNil(viewController.game)
    }
    
    func testMoveOneIncrementsScoreAfterRefactor() -> Void {
        
        viewController.playAfterRefactor(move: 1)
        let newScore = viewController.gameScoreForGame
        XCTAssertEqual(newScore, 1)
    }
}
