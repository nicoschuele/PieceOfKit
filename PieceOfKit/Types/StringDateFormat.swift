//
//  StringDateFormat.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import Foundation

/// Date formats for string <--> date conversions
public enum StringDateFormat {
    /// A date represented as YYYYMMDD (e.g. 20161129)
    case YYYYMMDD
    /// A date represented as YYYYMMDDHHmm (e.g. 201611292219)
    case YYYYMMDDHHmm
}
