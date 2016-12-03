//
//  UniqueRunnerTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import XCTest
@testable import PieceOfKit

class UniqueRunnerTests: XCTestCase {
    
    var someNumber: Int = 0
    
    func addNums(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    func nilReturn() -> Int? {
        self.someNumber += 1
        return nil
    }
    
    func voidReturn() {
        self.someNumber += 1
        return
    }
    
    func testWithVoidReturn() {
        let ur = UniqueRunner()
        XCTAssertFalse(ur.hasRun)
        
        ur.runOnce(voidReturn())
        XCTAssertTrue(ur.hasRun)
        ur.runOnce(voidReturn())
        ur.runOnce(voidReturn())
        
        XCTAssertEqual(self.someNumber, 1)
        
    }
    
    func testWithNilReturn() {
        let ur = UniqueRunner()
        XCTAssertFalse(ur.hasRun)
        
        ur.runOnce(voidReturn())
        XCTAssertTrue(ur.hasRun)
        ur.runOnce(voidReturn())
        ur.runOnce(voidReturn())
        
        XCTAssertEqual(self.someNumber, 1)
    }
    
    func testWitParamsAndIntReturn() {
        let ur = UniqueRunner()
        XCTAssertFalse(ur.hasRun)
        
        var result = ur.runOnce(addNums(2, 2))
        XCTAssertTrue(ur.hasRun)
        XCTAssertEqual(result, 4)
        
        result = ur.runOnce(addNums(5, 5))
        XCTAssertEqual(result, 4)
        
        result = ur.runOnce(addNums(10, 10))
        XCTAssertEqual(result, 4)
    }
    
}
