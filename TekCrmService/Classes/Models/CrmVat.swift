//
//  CrmVat.swift
//  TekCrmService
//
//  Created by Tung Nguyen on 8/10/20.
//  Copyright © 2020 Tung Nguyen. All rights reserved.
//

import Foundation
import TekServiceInterfaces

class CrmVat: ICrmVat, Decodable {
    var vatName: String?
    var vatAddress: String?
    var taxCode: String?
    
    enum CodingKeys: String, CodingKey {
        case vatName = "vat_name"
        case vatAddress = "vat_address"
        case taxCode = "tax_code"
    }
}
