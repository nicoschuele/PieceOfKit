//
//  StringLengthTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
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
