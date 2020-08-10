//
//  CrmResponse.swift
//  TekCrmService
//
//  Created by Tung Nguyen on 8/10/20.
//  Copyright © 2020 Tung Nguyen. All rights reserved.
//

import Foundation
import TekCoreNetwork
import TekServiceInterfaces

class CrmResponse: BaseResponse<CrmCode> {
    var customer: ICrmCustomer?
    var error: ICrmError?
}
