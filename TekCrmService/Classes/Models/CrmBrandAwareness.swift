//
//  CrmBrandAwareness.swift
//  TekCrmService
//
//  Created by Tung Nguyen on 8/10/20.
//  Copyright © 2020 Tung Nguyen. All rights reserved.
//

import Foundation
import TekServiceInterfaces

class CrmBrandAwareness: ICrmBrandAwareness, Decodable {
    var source: String?
    var detail: String?
}
