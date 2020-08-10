//
//  CrmService.swift
//  TekCrmService
//
//  Created by Tung Nguyen on 8/10/20.
//  Copyright © 2020 Tung Nguyen. All rights reserved.
//

import Foundation
import TekServiceInterfaces
import TekCoreService

class CrmService: BaseService<APIManager>, ICrmService {
    
    func getCustomer(id: String, completion: @escaping CrmResponseHandler) {
        let request = CrmRequest(requestType: .getCustomer(id: id))
        apiManager.call(request, onSuccess: { (response) in
            completion(response.customer, response.error)
        }) { (error, response) in
            completion(nil, response?.error)
        }
    }
    
    func addAddressToCustomer(id: String, contact: ICrmContact, completion: @escaping CrmResponseHandler) {
        let request = CrmRequest(requestType: .addContact(customerId: id, contact: contact))
        apiManager.call(request, onSuccess: { (response) in
            completion(response.customer, response.error)
        }) { (error, response) in
            completion(nil, response?.error)
        }
    }
    
    func create(payload: ICrmPayload, completion: @escaping CrmResponseHandler) {
        let request = CrmRequest(requestType: .create(payload: payload))
        apiManager.call(request, onSuccess: { (response) in
            completion(response.customer, response.error)
        }) { (error, response) in
            completion(nil, response?.error)
        }
    }
    
    func deleteContact(id: String, contact: ICrmContact, completion: @escaping (Bool) -> ()) {
        let request = CrmRequest(requestType: .deleteContact(id: id, contact: contact))
        apiManager.call(request, onSuccess: { _ in
            completion(true)
        }) { _, _ in
            completion(false)
        }
    }
    
    
    
    
}
