//
//  MusicPerformance.swift
//  LinkedIn Learning Unit TestsTests
//
//  Created by Brandan McDevitt on 18/03/2020.
//  Copyright © 2020 BrandanMcDevitt. All rights reserved.
//

import XCTest
@testable import LinkedIn_Learning_Unit_Tests

class MusicPerformance: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testMusic() {
        // This is an example of a performance test case.
        self.measure {
            
            let expect = expectation(description: "Server fetch")
            
            let music = Music()
            music.fetchMusic { items, error in
                expect.fulfill()
            }
            waitForExpectations(timeout: 10.0) { error in
                print(error?.localizedDescription)
            }
        }
    }

}
