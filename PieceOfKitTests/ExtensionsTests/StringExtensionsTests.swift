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
    
    func testToBool() {
        let string = "true"
        let string2 = "TRUE"
        let string3 = "none"
        let string4 = "false"
        let string5 = " true "
        
        XCTAssertTrue(string.toBool())
        XCTAssertTrue(string2.toBool())
        XCTAssertFalse(string3.toBool())
        XCTAssertFalse(string4.toBool())
        XCTAssertFalse(string5.toBool())
    }
    
    func testToDate() {
        let date = Date.fromString("20071020")
        let stringDate = "20071020"
        XCTAssertEqual(date, stringDate.toDate())
    }
}
