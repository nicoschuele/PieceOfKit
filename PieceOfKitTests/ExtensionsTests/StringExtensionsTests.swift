//
//  StringExtensionsTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import XCTest
@testable import PieceOfKit

class StringExtensionsTests: XCTestCase {
    
    func testBlank() {
        let string = "    "
        let string2 = ""
        let string3 = "  \n "
        let string4 = "     \t"
        let string5 = "  a  "
        
        XCTAssertTrue(string.isBlank)
        XCTAssertTrue(string2.isBlank)
        XCTAssertTrue(string3.isBlank)
        XCTAssertTrue(string4.isBlank)
        XCTAssertFalse(string5.isBlank)
    }
    
}
