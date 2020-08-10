//
//  IShippingInfo.swift
//  TekServiceInterfaces
//
//  Created by Tung Nguyen on 8/6/20.
//

import Foundation

public protocol IShippingInfo {
    var name: String { get }
    var phone: String { get }
    var email: String? { get }
    var expectedDate: String? { get }
    var provinceID: String { get }
    var wardID: String { get }
    var districtID: String { get }
    var address: String { get }
    var fullAddress: String { get }
    var country: String { get }
    var type: Int? { get }
    var note: String? { get }
    var lat: Double? { get }
    var lon: Double? { get }

}
