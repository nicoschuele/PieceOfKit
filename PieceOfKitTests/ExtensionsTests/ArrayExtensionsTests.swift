//
//  ArrayExtensionsTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import XCTest
@testable import PieceOfKit

class ArrayExtensionsTests: XCTestCase {
    
    func testRandom() {
        let notEmpty = [1,2,3,4,5]
        let empty: [Int] = []
        
        var array = Array<Int>()
        for _ in 1...100 {
            array.append(notEmpty.random()!)
        }
        
        XCTAssertNil(empty.random())
        
        for i in array {
            XCTAssertTrue(i >= 1 && i <= 5)
        }
        
        XCTAssertTrue(array.contains(1))
        XCTAssertTrue(array.contains(5))
    }
    
    func testPrepend() {
        var array = [1,2,3,4]
        array.prepend(5)
        XCTAssertEqual(array[0], 5)
    }
    
}
