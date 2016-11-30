//
//  StringDigitsOnlyTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import XCTest
@testable import PieceOfKit

class StringDigitsOnlyTests: XCTestCase {
    
    let validOne = "123456"
    let invalidOne = "123a456"
    let invalidTwo = "12.345"
    let invalidThree = "12 345"
    
    func testDigitsOnly() {
        XCTAssertTrue(validOne.digitsOnly)
        XCTAssertFalse(invalidOne.digitsOnly)
        XCTAssertFalse(invalidTwo.digitsOnly)
        XCTAssertFalse(invalidThree.digitsOnly)
    }
    
}
