//  MovieUITests.swift
//  MovieUITests
//  Created by Yusuf Muhammet Yıldırım on 4/24/22.

import XCTest

class MovieUITests: XCTestCase {

    override func setUpWithError() throws {
       
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        
    }

    func testExample() throws {
        
        let app = XCUIApplication()
        app.launch()
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
