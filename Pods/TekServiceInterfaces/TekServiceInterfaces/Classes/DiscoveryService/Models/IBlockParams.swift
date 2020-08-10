//
//  IBlockParams.swift
//  Pods-TekServiceInterfaces_Tests
//
//  Created by Tung Nguyen on 8/6/20.
//

import Foundation

public protocol IBlockParams {
    var filter: IBlockFilter? { get }
    var sorting: IBlockSorting? { get }
}
