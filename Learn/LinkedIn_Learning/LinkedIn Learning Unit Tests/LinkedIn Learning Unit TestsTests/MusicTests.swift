//
//  MusicTests.swift
//  LinkedIn Learning Unit TestsTests
//
//  Created by Brandan McDevitt on 18/03/2020.
//  Copyright © 2020 BrandanMcDevitt. All rights reserved.
//

import XCTest
@testable import LinkedIn_Learning_Unit_Tests

class MusicTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testParseJSON() {
        let music = Music()
        let bundle = Bundle(for: type(of: self))
        if let path = bundle.path(forResource: "JSON", ofType: "txt") {
            if let data = try? Data.init(contentsOf: URL.init(fileURLWithPath: path))  {
                let result = music.parseJSON(data: data)
                XCTAssertNotNil(result!, "Should not be nil")
                XCTAssertGreaterThan(result!.count, 0, "Should have values")
            } else {
                XCTFail()
            }
        }
    }
    
    func testRefresh() {
        let music = MockMusic()
        music.refresh()
        
        XCTAssertNotNil(music.cache, "Cache should not be nil")
    }
    
    func testFetch() {
        
        let expect = expectation(description: "server fetch")
        
        let music = Music()
        
        music.fetchMusic { items, error in
            XCTAssertNotNil(items, "items should not be nil")
            XCTAssertTrue(items!.count > 0, "items should not be empty")
            expect.fulfill()
        }
        
        waitForExpectations(timeout: 3.0) { error in
            print(error?.localizedDescription)
        }
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
