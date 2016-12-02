//
//  FloatExtensionsTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import XCTest
@testable import PieceOfKit

class FloatExtensionsTests: XCTestCase {
    
    func testToString() {
        let float: Float = 3.14
        XCTAssertEqual(float.toString(), "3.14")
    }
    
}
