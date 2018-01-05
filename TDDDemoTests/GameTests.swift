//
//  GameTests.swift
//  TDDDemoTests
//
//  Created by Hung Chang Lo on 2018/1/4.
//  Copyright © 2018年 Hung Chang Lo. All rights reserved.
//

import XCTest
@testable import TDDDemo

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGameStartAtZero() -> Void {
        
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() -> Void {
        
        game.play()
        XCTAssertTrue(game.score == 1)
        XCTAssertEqual(game.score, 1)
    }
}
