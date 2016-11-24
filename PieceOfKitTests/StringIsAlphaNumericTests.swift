//
//  StringIsAlphaNumericTests.swift
//  PieceOfKit
//
//  Created by Nico Schuele on 24.11.16.
//  Copyright © 2016 Nico Schuele. All rights reserved.
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
        XCTAssert(correctOne.isAlphaNumeric)
        XCTAssert(correctTwo.isAlphaNumeric)
        XCTAssert(!incorrectOne.isAlphaNumeric)
        XCTAssert(!incorrectTwo.isAlphaNumeric)
        XCTAssert(!incorrectThree.isAlphaNumeric)
        XCTAssert(!incorrectFour.isAlphaNumeric)
    }
    
}
