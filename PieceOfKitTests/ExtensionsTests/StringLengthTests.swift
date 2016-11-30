//
//  StringLengthTests.swift
//  PieceOfKit
//
//  Created by Nico Schuele on 24.11.16.
//  Copyright © 2016 Nico Schuele. All rights reserved.
//

import XCTest
@testable import PieceOfKit

class StringLengthTests: XCTestCase {
    
    let aString = "This is a test 😌"
    let theLength = 16
    
    func testStringLength() {
        XCTAssertEqual(aString.length, theLength)
    }
    
}
