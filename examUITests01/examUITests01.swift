//
//  examUITests01.swift
//  examUITests01
//
//  Created by Chen ChiYun on 03/02/2018.
//  Copyright © 2018 Chen ChiYun. All rights reserved.
//

import XCTest

class examUITests01: XCTestCase {
        
    override func setUp() {
        super.setUp()
 
        continueAfterFailure = false

        XCUIApplication().launch()

    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    //UI test here
    func testExample() {
        var randomCell: XCUIElement?
        
        let apps = XCUIApplication()
        apps.buttons["Go To List"].tap()
        let cells = XCUIApplication().collectionViews.cells
        for _ in 1...3 {
            let n = Int(arc4random_uniform(UInt32(cells.count)))
            randomCell = cells.element(boundBy: n)
            randomCell?.tap()
            apps.buttons["left"].tap()
        }
        apps.swipeLeft()
        apps.buttons["Go To List"].tap()
        for _ in 1...3 {
            let n = Int(arc4random_uniform(UInt32(cells.count)))
            randomCell = cells.element(boundBy: n)
            randomCell?.tap()
            apps.swipeLeft()
        }
    }

}
