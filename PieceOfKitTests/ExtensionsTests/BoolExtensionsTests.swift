//
//  BoolExtensionsTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import XCTest
@testable import PieceOfKit

class BoolExtensionsTests: XCTestCase {
    
    func testToggle() {
        var yes = true
        var no = false
        
        yes.toggle()
        no.toggle()
        
        XCTAssertTrue(no)
        XCTAssertFalse(yes)
    }
    
    func testToString() {
        let yes = true
        let no = false
        
        XCTAssertEqual(yes.toString(), "true")
        XCTAssertEqual(no.toString(), "false")
    }
    
}
