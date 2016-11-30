//
//  IntExtensionsTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import XCTest
@testable import PieceOfKit

class IntExtensionsTests: XCTestCase {
    
    /// function called by x.times tests
    func addNumbers(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    func testToString() {
        let a = 3
        let b = 11
        let c = -1978
        
        XCTAssertEqual(a.toString(), "3")
        XCTAssertEqual(b.toString(), "11")
        XCTAssertEqual(c.toString(), "-1978")
    }
    
    func testTimes() {
        var a = 0
        3.times {
            a += addNumbers(3, 2)
        }
        XCTAssertEqual(a, 15)
    }
    
    func testTimesWithMultipleFunctions() {
        var a = 0
        var b = 0        
        3.times {
            a += addNumbers(3, 2)
            b += addNumbers(2, 4)
        }
        XCTAssertEqual(a, 15)
        XCTAssertEqual(b, 18)
    }
}
