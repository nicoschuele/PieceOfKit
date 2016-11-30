//
//  UIColorExtensionsTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import XCTest
@testable import PieceOfKit

class UIColorExtensionsTests: XCTestCase {
    
    func testInit() {
        let red = UIColor.red
        let r = UIColor(r: 255, g: 0, b: 0)
        XCTAssertEqual(r, red)
    }
    
    func testGetIndividualColors() {
        let testColor = UIColor(r: 123, g: 97, b: 12, a: 0.5)
        
        XCTAssertEqual(testColor.getRed(), 123)
        XCTAssertEqual(testColor.getGreen(), 97)
        XCTAssertEqual(testColor.getBlue(), 12)
        XCTAssertEqual(testColor.getAlpha(), 0.5)
    }
    
    func testToString() {
        let testColor = UIColor(r: 123, g: 97, b: 12, a: 0.5)
        let testColorString = testColor.toString()
        let controlString = "Red: 123 - Green: 97 - Blue: 12 - Alpha: 0.5"
        
        XCTAssertEqual(testColorString, controlString)
    }
    
    func testLimits() {
        let testColor = UIColor(r: 300, g: -10, b: 256, a: 1.1)
        
        XCTAssertEqual(testColor.getRed(), 255)
        XCTAssertEqual(testColor.getGreen(), 0)
        XCTAssertEqual(testColor.getBlue(), 255)
        XCTAssertEqual(testColor.getAlpha(), 1.0)
    }
}
