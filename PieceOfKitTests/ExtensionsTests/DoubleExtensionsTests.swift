//
//  DoubleExtensionsTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import XCTest
@testable import PieceOfKit

class DoubleExtensionsTests: XCTestCase {
    
    func testToString() {
        let double: Double = 3.14
        XCTAssertEqual(double.toString(), "3.14")
    }
    
}
