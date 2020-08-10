//
//  CrmServiceFactory.swift
//  TekCrmService
//
//  Created by Tung Nguyen on 8/10/20.
//  Copyright © 2020 Tung Nguyen. All rights reserved.
//

import Foundation
import TekCoreService

public class CrmServiceFactory: ServiceBuildable, ServiceConfigAttachable {
    public var config: ServiceConfig?
    
    required public init() {}
    
    public func withConfig(_ config: ServiceConfig) {
        self.config = config
    }
    
    public func createService() throws -> AnyService {
        guard let rawUrl = config?.crmRawUrl,
            let url = URL(string: rawUrl) else {
                throw ServiceError.invalidURL
        }
        return AnyService(CrmService(url: url))
    }
    
}
