//
//  SingletonUnitTest.swift
//  TDDDemoTests
//
//  Created by Hung Chang Lo on 2018/1/5.
//  Copyright © 2018年 Hung Chang Lo. All rights reserved.
//

import XCTest
import Alamofire

class SingletonUnitTest: XCTestCase {
    
    let link = "http://data.ntpc.gov.tw/api/v1/rest/datastore/382000000A-000157-002"
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSingletonGetAPI() -> Void {
        
        let expec = expectation(description: "Test get api")
        
        Alamofire.request(link).responseJSON { response in
            
            if response.result.isSuccess
            {
                expec.fulfill()
            }
            else
            {
                XCTFail()
            }
            
        }
        
        waitForExpectations(timeout: 10.0, handler: nil)
    }
    
}
