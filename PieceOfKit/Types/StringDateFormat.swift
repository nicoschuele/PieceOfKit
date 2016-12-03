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
    /// A date represented as yyyyMMdd (e.g. 20161129)
    case yyyyMMdd
    /// A date represented as yyyyMMddHHmm (e.g. 201611292219)
    case yyyyMMddHHmm
    /// A date represented as yyyyMMddHHmmss (e.g. 20161129221912)
    case yyyyMMddHHmmss
}
