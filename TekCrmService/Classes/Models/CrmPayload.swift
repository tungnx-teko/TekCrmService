//
//  CrmPayload.swift
//  TekCrmService
//
//  Created by Tung Nguyen on 8/10/20.
//  Copyright © 2020 Tung Nguyen. All rights reserved.
//

import Foundation
import TekServiceInterfaces

class CrmPayload: ICrmPayload {
    var name: String?
    var phone: String?
    var province: String?
    var district: String?
    var ward: String?
    var contacts: [ICrmContact] = []
    
    var payloadDict: [String: Any]? {
        var dict = [String: Any]()
        dict["name"] = name
        dict["phone"] = phone
        dict["province"] = province
        dict["district"] = district
        dict["ward"] = ward
        dict["contacts"] = contacts.compactMap { $0.payloadDict }
        return dict
    }
}
