//
//  StringLettersOnlyTests.swift
//  PieceOfKit
//
//  Created by Nico Schuele on 24.11.16.
//  Copyright © 2016 Nico Schuele. All rights reserved.
//

import XCTest
@testable import PieceOfKit

class StringLettersOnlyTests: XCTestCase {
    
    let validOne = "abcdefg"
    let validTwo = "AbCdEf"
    let invalidOne = "ab123"
    let invalidTwo = "abc def"
    
    func testLettersOnly() {
        XCTAssertTrue(validOne.lettersOnly)
        XCTAssertTrue(validTwo.lettersOnly)
        XCTAssertFalse(invalidOne.lettersOnly)
        XCTAssertFalse(invalidTwo.lettersOnly)
    }
    
}
