//
//  StringSubstringTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import XCTest
@testable import PieceOfKit

class StringSubstringTests: XCTestCase {
    
    let fullString = "This is a test string. It will be substringed"
    let subStringedBeginning = "This is"
    let subStringedMiddle = "is a test"
    
    func testSubstringInMiddle() {
        let result = fullString.substring(5..<14)
        XCTAssertEqual(result, subStringedMiddle)
    }
    
    func testSubstringFromBeginning() {
        let result = fullString.substring(0..<7)
        XCTAssertEqual(result, subStringedBeginning)
    }
    
}
