//
//  UniqueRunner.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import Foundation

/** 
 A class used to run a function only once.
 
 Example:
 
        let ur = UniqueRunner()
        var result = ur.runOnce(addNumbers(2, 2))
        result = ur.runOnce(addNumbers(5, 5))
        result = ur.runOnce(addNumbers(10, 10))
        
        result == 4 // true
 */
public class UniqueRunner {
    
    /// Indicates if the method has run already
    public var hasRun = false
    
    private var methodResult: Any? = nil
    
    /**
     Run any method once and always returns the result of the run when called multiple times
     
     - Parameter function: the function that needs to run only once
     
     - Returns: the function result
     */
    public func runOnce<T>(_ function: @autoclosure () -> T) -> T {
        if !hasRun {
            let result: T = function()
            self.hasRun = true
            self.methodResult = result
            return result
        }
        
        return methodResult as! T
    }
}
