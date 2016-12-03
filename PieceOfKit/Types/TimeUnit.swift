//
//  TimeUnit.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import Foundation

/// Representation of standard units of time in seconds
public enum TimeUnit: Int {
    /// Represents 1 second
    case second = 1
    /// Represents 60 seconds
    case minute = 60
    /// Represents 3600 seconds
    case hour = 3600
    /// Represents 86400 seconds
    case day = 86400
    /// Represents 604800 seconds
    case week = 604800
}
