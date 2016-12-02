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
        let r = UIColor(rgbaColor: RGBAColor(red: 255, green: 0, blue: 0, alpha: 1.0))
        XCTAssertEqual(r, red)
    }
    
    func testGetIndividualColors() {
        let testColor = UIColor(rgbaColor: RGBAColor(red: 123, green: 97, blue: 12, alpha: 0.5))
        
        XCTAssertEqual(testColor.getRed(), 123)
        XCTAssertEqual(testColor.getGreen(), 97)
        XCTAssertEqual(testColor.getBlue(), 12)
        XCTAssertEqual(testColor.getAlpha(), 0.5)
    }
    
    func testToString() {
        let testColor = UIColor(rgbaColor: RGBAColor(red: 123, green: 97, blue: 12, alpha: 0.5))
        
        let testColorString = testColor.toString()
        let controlString = "Red: 123 - Green: 97 - Blue: 12 - Alpha: 0.5"
        
        XCTAssertEqual(testColorString, controlString)
    }
    
    func testLimits() {
        let testColor = UIColor(rgbaColor: .init(red: 300, green: -10, blue: 256, alpha: 1.1))
        
        XCTAssertEqual(testColor.getRed(), 255)
        XCTAssertEqual(testColor.getGreen(), 0)
        XCTAssertEqual(testColor.getBlue(), 255)
        XCTAssertEqual(testColor.getAlpha(), 1.0)
    }
}
