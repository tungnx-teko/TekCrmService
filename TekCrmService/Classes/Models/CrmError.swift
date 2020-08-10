//
//  CrmError.swift
//  TekCrmService
//
//  Created by Tung Nguyen on 8/10/20.
//  Copyright © 2020 Tung Nguyen. All rights reserved.
//

import Foundation
import TekServiceInterfaces

class CrmError: ICrmError {
    var code: Int?
    var message: ICrmResponseMessage?
    var error: Bool?
    var customers: [ICrmCustomer] = []
}
