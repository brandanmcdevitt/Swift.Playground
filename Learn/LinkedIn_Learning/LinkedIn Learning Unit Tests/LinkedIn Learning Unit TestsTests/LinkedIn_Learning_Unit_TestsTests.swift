//
//  LinkedIn_Learning_Unit_TestsTests.swift
//  LinkedIn Learning Unit TestsTests
//
//  Created by Brandan McDevitt on 18/03/2020.
//  Copyright © 2020 BrandanMcDevitt. All rights reserved.
//

import XCTest
@testable import LinkedIn_Learning_Unit_Tests

class LinkedIn_Learning_Unit_TestsTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTipCalculator() {
        let tipCalculator = TipCalculator()
        let tip = tipCalculator.calculateTip(amount: 128.51, percentage: 50.0)
        XCTAssertEqual(64.26, tip, accuracy: 0.01, "Tip was wrong for 50%")
    }
    
    func testUnitTests() {
        var x: Int
        x = 1
        XCTAssert(x == 1, "x should equal 1")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
