//
//  StringTrimTests.swift
//  PieceOfKit
//
//  Created by Nico Schuele on 24.11.16.
//  Copyright © 2016 Nico Schuele. All rights reserved.
//

import XCTest

class StringTrimTests: XCTestCase {
    
    let stringWithWhiteSpaces = "  this is a test   "
    let stringWithoutWhiteSpaces = "this is a test"
    
    let stringWithWhiteSpacesAndNewLines = "  \nthis is a \ntest\n\n"
    let stringWithoutWhiteSpacesAndNewLines = "this is a \ntest"
    
    func testTrimForWhiteSpaces() {
        XCTAssert(stringWithWhiteSpaces.trim() == stringWithoutWhiteSpaces)
    }
    
    func testTrimForWhiteSpacesAndNewLines() {
        XCTAssert(stringWithWhiteSpacesAndNewLines.trim(shouldTrimNewLineCharacters: true) == stringWithoutWhiteSpacesAndNewLines)
    }
    
}
