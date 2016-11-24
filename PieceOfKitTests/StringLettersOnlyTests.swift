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
        XCTAssert(validOne.lettersOnly)
        XCTAssert(validTwo.lettersOnly)
        XCTAssert(!invalidOne.lettersOnly)
        XCTAssert(!invalidTwo.lettersOnly)
    }
    
}
