//
//  IService.swift
//  TekServiceInterfaces
//
//  Created by Tung Nguyen on 8/6/20.
//

import Foundation

public protocol IService {
    var installation: Bool? { get }
    var delivery: Bool? { get }
    var technicalSupport: Bool? { get }
}
