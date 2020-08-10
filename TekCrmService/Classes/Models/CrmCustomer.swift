//
//  CrmCustomer.swift
//  TekCrmService
//
//  Created by Tung Nguyen on 8/10/20.
//  Copyright © 2020 Tung Nguyen. All rights reserved.
//

import Foundation
import TekServiceInterfaces

class CrmCustomer: ICrmCustomer, Decodable {
    var address: String?
    var ageFrom: Int
    var ageTo: Int
    var asiaCrmId: String = Constant.asiaCrmId
    var bankAccounts: [ICrmBankAccount]
    var brandAwareness: [ICrmBrandAwareness]
    var businessLicense: String?
    var businessType: Int
    var comment: String?
    var contacts: [ICrmContact]
    var dateOfBirth: String?
    var debtLimit: Double
    var district: String?
    var districtId: String?
    var email: String?
    var extraInformation: [ICrmInformation]
    var facebookLink: String?
    var fax: String?
    var gender: String?
    var id: Int
    var identification: String?
    var income: Int
    var isCompany: Bool
    var isDeleted: Bool
    var name: String?
    var optionalPhone1: String?
    var optionalPhone2: String?
    var paymentPeriod: Int
    var phone: String?
    var province: String?
    var provinceId: String?
    var referenceId: Int
    var scope: Int
    var source: String?
    var sourceId: String?
    var taxAddress: String?
    var taxCode: String?
    var taxName: String?
    var vats: [ICrmVat]
    var ward: String?
    var wardId: String?
    
    enum CodingKeys: String, CodingKey {
        case address, gender, source, id, comment, province, contacts, scope, identification, name, district, phone, email, fax, ward, vats, income, asiaCrmId, wardId, districtId, provinceId, fullAddress
        case taxName = "tax_name"
        case bankAccounts = "bank_accounts"
        case isDeleted = "is_deleted"
        case ageTo = "age_to"
        case taxCode = "tax_code"
        case dateOfBirth = "date_of_birth"
        case optionalPhone2 = "optional_phone_2"
        case optionalPhone1 = "optional_phone_1"
        case businessLicense = "business_license"
        case ageFrom = "age_from"
        case businessType = "business_type"
        case isCompany = "is_company"
        case brandAwareness = "brand_awareness"
        case debtLimit = "debt_limit"
        case extraInformation = "extra_information"
        case referenceId = "reference_id"
        case facebookLink = "facebook_link"
        case sourceId = "source_id"
        case paymentPeriod = "payment_period"
        case taxAddress = "tax_address"
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        address = try values.decodeIfPresent(String.self, forKey: .address)
        ageFrom = try values.decodeIfPresent(Int.self, forKey: .ageFrom) ?? 0
        ageTo = try values.decodeIfPresent(Int.self, forKey: .ageTo) ?? 0
        bankAccounts = try values.decodeIfPresent([CrmBankAccount].self, forKey: .bankAccounts) ?? []
        brandAwareness = try values.decodeIfPresent([CrmBrandAwareness].self, forKey: .brandAwareness) ?? []
        businessLicense = try values.decodeIfPresent(String.self, forKey: .businessLicense)
        businessType = try values.decodeIfPresent(Int.self, forKey: .businessType) ?? 0
        comment = try values.decodeIfPresent(String.self, forKey: .comment)
        contacts = try values.decodeIfPresent([CrmContact].self, forKey: .contacts) ?? []
        dateOfBirth = try values.decodeIfPresent(String.self, forKey: .dateOfBirth)
        debtLimit = try values.decodeIfPresent(Double.self, forKey: .debtLimit) ?? 0
        district = try values.decodeIfPresent(String.self, forKey: .district)
        email = try values.decodeIfPresent(String.self, forKey: .email)
        extraInformation = try values.decodeIfPresent([CrmInformation].self, forKey: .extraInformation) ?? []
        facebookLink = try values.decodeIfPresent(String.self, forKey: .facebookLink)
        fax = try values.decodeIfPresent(String.self, forKey: .fax)
        gender = try values.decodeIfPresent(String.self, forKey: .gender)
        id = try values.decode(Int.self, forKey: .id)
        identification = try values.decodeIfPresent(String.self, forKey: .identification)
        income = try values.decodeIfPresent(Int.self, forKey: .income) ?? 0
        isCompany = try values.decodeIfPresent(Bool.self, forKey: .isCompany) ?? false
        isDeleted = try values.decodeIfPresent(Bool.self, forKey: .isDeleted) ?? false
        name = try values.decodeIfPresent(String.self, forKey: .name)
        optionalPhone1 = try values.decodeIfPresent(String.self, forKey: .optionalPhone1)
        optionalPhone2 = try values.decodeIfPresent(String.self, forKey: .optionalPhone2)
        paymentPeriod = try values.decodeIfPresent(Int.self, forKey: .paymentPeriod) ?? 0
        phone = try values.decodeIfPresent(String.self, forKey: .phone)
        province = try values.decodeIfPresent(String.self, forKey: .province)
        referenceId = try values.decodeIfPresent(Int.self, forKey: .referenceId) ?? 0
        scope = try values.decodeIfPresent(Int.self, forKey: .scope) ?? 0
        source = try values.decodeIfPresent(String.self, forKey: .source)
        sourceId = try values.decodeIfPresent(String.self, forKey: .sourceId)
        taxAddress = try values.decodeIfPresent(String.self, forKey: .taxAddress)
        taxCode = try values.decodeIfPresent(String.self, forKey: .taxCode)
        taxName = try values.decodeIfPresent(String.self, forKey: .taxName)
        vats = try values.decodeIfPresent([CrmVat].self, forKey: .vats) ?? []
        ward = try values.decodeIfPresent(String.self, forKey: .ward)
    }
    
}
