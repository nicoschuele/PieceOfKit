//
//  StringLettersOnlyTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
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
