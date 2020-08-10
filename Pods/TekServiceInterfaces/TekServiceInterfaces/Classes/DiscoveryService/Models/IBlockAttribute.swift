//
//  IBlockAttribute.swift
//  Pods-TekServiceInterfaces_Tests
//
//  Created by Tung Nguyen on 8/6/20.
//

import Foundation

public protocol IBlockAttribute {
    var code: String? { get }
    var values: [String] { get }
}
