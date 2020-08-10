//
//  CrmContact.swift
//  TekCrmService
//
//  Created by Tung Nguyen on 8/10/20.
//  Copyright © 2020 Tung Nguyen. All rights reserved.
//

import Foundation
import TekServiceInterfaces

class CrmContact: ICrmContact, Codable {
    var address: String?
    var comment: String?
    var contactRelation: String
    var district: String
    var email: String
    var facebookLink: String
    var fax: String
    var gender: String
    var id: Int
    var isDefault: Bool
    var name: String?
    var phone: String
    var province: String
    var updatedAt: String?
    var ward: String
    
    enum CodingKeys: String, CodingKey {
        case contactRelation = "contact_relation"
        case updatedAt = "updated_at"
        case facebookLink = "facebook_link"
        case isDefault = "is_default"
        case fax, name, address, gender, comment, id, province, email, phone, district, ward
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(contactRelation, forKey: .contactRelation)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encode(fax, forKey: .fax)
        try container.encode(facebookLink, forKey: .facebookLink)
        try container.encode(address, forKey: .address)
        try container.encode(gender, forKey: .gender)
        try container.encode(comment, forKey: .comment)
        try container.encode(name, forKey: .name)
        if id != 0 {
            try container.encode(id, forKey: .id)
        }
        try container.encode(province, forKey: .province)
        try container.encode(email, forKey: .email)
        try container.encode(phone, forKey: .phone)
        try container.encode(district, forKey: .district)
        try container.encode(ward, forKey: .ward)
    }
    
    var payloadDict: [String: Any]? {
        var dict: [String: Any] = [:]
        dict[CodingKeys.contactRelation.rawValue] = contactRelation
        dict[CodingKeys.name.rawValue] = name
        dict[CodingKeys.phone.rawValue] = phone
        dict[CodingKeys.address.rawValue] = address
        dict[CodingKeys.comment.rawValue] = comment ?? ""
        dict[CodingKeys.province.rawValue] = province
        dict[CodingKeys.district.rawValue] = district
        dict[CodingKeys.ward.rawValue] = ward
        dict[CodingKeys.isDefault.rawValue] = isDefault
        return dict
    }
    
}
