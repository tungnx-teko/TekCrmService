//
//  ICrmBankAccount.swift
//  TekCrmService
//
//  Created by Tung Nguyen on 8/10/20.
//  Copyright © 2020 Tung Nguyen. All rights reserved.
//

import Foundation
import TekServiceInterfaces

class CrmBankAccount: ICrmBankAccount, Decodable {
    var bankCode: String?
    var accNumber: String?
    var accName: String?
    var branchCode: String?
    
    enum CodingKeys: String, CodingKey {
        case bankCode = "bank_code"
        case accNumber = "acc_number"
        case accName = "acc_name"
        case branchCode = "branch_code"
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        bankCode = try values.decodeIfPresent(String.self, forKey: .bankCode)
        accNumber = try values.decodeIfPresent(String.self, forKey: .accNumber)
        accName = try values.decodeIfPresent(String.self, forKey: .accName)
        branchCode = try values.decodeIfPresent(String.self, forKey: .branchCode)
    }

}
