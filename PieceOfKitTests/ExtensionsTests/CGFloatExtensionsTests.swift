//
//  CGFloatExtensionsTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import XCTest
@testable import PieceOfKit

class CGFloatExtensionsTests: XCTestCase {
    
    func testToString() {
        let cgfloat: CGFloat = 3.14
        XCTAssertEqual(cgfloat.toString(), "3.14")
    }
    
}
