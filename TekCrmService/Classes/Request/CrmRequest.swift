//
//  CrmRequest.swift
//  TekCrmService
//
//  Created by Tung Nguyen on 8/10/20.
//  Copyright © 2020 Tung Nguyen. All rights reserved.
//

import Foundation
import TekServiceInterfaces
import TekCoreNetwork

class CrmRequest {
    
    enum RequestType {
        case create(payload: ICrmPayload)
        case getCustomer(id: String)
        case addContact(customerId: String, contact: ICrmContact)
        case deleteContact(id: String, contact: ICrmContact)
        
        var path: String {
            switch self {
            case .addContact(let customerId, _):
                return "/api/v3.0/customers/\(customerId)"
            case .create:
                return "/api/v3.0/customers"
            case .deleteContact(let id, let contact):
                return "/api/v3.0/customers/\(id)/contacts/\(contact.id)"
            case .getCustomer(let id):
                return "/api/v1.0/customers/\(id)"
            }
        }
    }
    
    let requestType: RequestType
    
    init(requestType: RequestType) {
        self.requestType = requestType
    }
    
}

extension CrmRequest: BaseRequestProtocol {
    typealias ResponseType = CrmResponse
    
    var encoder: APIParamEncoder {
        switch requestType {
        case .getCustomer:
            return .singleParams([:], encoding: JSONParamEncoding.default)
        case .create(let payload):
            return .singleParams(payload.payloadDict ?? [:], encoding: JSONParamEncoding.default)
        case .addContact(_, let contact):
            return .singleParams(contact.payloadDict ?? [:], encoding: JSONParamEncoding.default)
        case .deleteContact:
            return .singleParams([:], encoding: URLParamEncoding.default)
        }
    }
    
    var method: APIMethod {
        switch requestType {
        case .getCustomer:
            return .get
        case .create:
            return .post
        case .addContact:
            return .put
        case .deleteContact:
            return .delete
        }
    }
    
    var path: String {
        return requestType.path
    }
    
    var hasToken: Bool {
        return false
    }
    
}
