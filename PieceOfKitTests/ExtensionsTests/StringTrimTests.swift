//
//  StringTrimTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import XCTest
@testable import PieceOfKit

class StringTrimTests: XCTestCase {
    
    let stringWithWhiteSpaces = "  this is a test   "
    let stringWithoutWhiteSpaces = "this is a test"
    
    let stringWithWhiteSpacesAndNewLines = "  \nthis is a \ntest\n\n"
    let stringWithoutWhiteSpacesAndNewLines = "this is a \ntest"
    
    func testTrimForWhiteSpaces() {
        XCTAssertEqual(stringWithWhiteSpaces.trim(), stringWithoutWhiteSpaces)
    }
    
    func testTrimForWhiteSpacesAndNewLines() {
        XCTAssertEqual(stringWithWhiteSpacesAndNewLines.trim(shouldTrimNewLineCharacters: true), stringWithoutWhiteSpacesAndNewLines)
    }
    
}
