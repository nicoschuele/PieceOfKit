//
//  StringIsAlphaNumericTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import XCTest
@testable import PieceOfKit

class StringIsAlphaNumericTests: XCTestCase {
    
    let correctOne = "ThisIsAlphanumeric"
    let correctTwo = "ThisContains1and2and3"
    let incorrectOne = "Thishasacomma,init"
    let incorrectTwo = "Thiscontains$adollarsign"
    let incorrectThree = "😜emojisnotallowed"
    let incorrectFour = "Whitespaces not allowed"
    
    func testAlphaNumeric(){
        XCTAssertTrue(correctOne.isAlphaNumeric)
        XCTAssertTrue(correctTwo.isAlphaNumeric)
        XCTAssertFalse(incorrectOne.isAlphaNumeric)
        XCTAssertFalse(incorrectTwo.isAlphaNumeric)
        XCTAssertFalse(incorrectThree.isAlphaNumeric)
        XCTAssertFalse(incorrectFour.isAlphaNumeric)
    }
    
}
