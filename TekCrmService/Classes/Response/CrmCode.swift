//
//  CrmCode.swift
//  TekCrmService
//
//  Created by Tung Nguyen on 8/10/20.
//  Copyright © 2020 Tung Nguyen. All rights reserved.
//

import Foundation
import TekCoreNetwork

class CrmCode: TekoBoolCode {
    
    private enum Keys: String, CodingKey {
        case message
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: Keys.self)
        let message = try container.decodeIfPresent(String.self, forKey: .message)
        super.init(code: true, message: message)
    }
    
}
