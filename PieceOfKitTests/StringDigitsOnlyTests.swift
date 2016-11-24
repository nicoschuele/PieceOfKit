//
//  StringDigitsOnlyTests.swift
//  PieceOfKit
//
//  Created by Nico Schuele on 24.11.16.
//  Copyright © 2016 Nico Schuele. All rights reserved.
//

import XCTest
@testable import PieceOfKit

class StringDigitsOnlyTests: XCTestCase {
    
    let validOne = "123456"
    let invalidOne = "123a456"
    let invalidTwo = "12.345"
    let invalidThree = "12 345"
    
    func testDigitsOnly() {
        XCTAssert(validOne.digitsOnly)
        XCTAssert(!invalidOne.digitsOnly)
        XCTAssert(!invalidTwo.digitsOnly)
        XCTAssert(!invalidThree.digitsOnly)
    }
    
}
