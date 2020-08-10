//
//  IOrderListItem.swift
//  TekServiceInterfaces
//
//  Created by Tung Nguyen on 8/6/20.
//

import Foundation

public protocol IOrderListItem {
    var billingInfo: IBillingInfo? { get }
    var cancellationReason: String? { get }
    var cancelledAt: String? { get }
    var cancelledBy: IOrderPaymentConfirmer? { get }
    var cancelledType: Int? { get }
    var childOrders: [IMarketChildOrder] { get }
    var code: String? { get }
    var confirmAt: String? { get }
    var confirmer: IOrderPaymentConfirmer? { get }
    var createdAt: String? { get }
    var creator: IOrderCreator? { get }
    var customer: IOrderCustomer? { get }
    var grandTotal: Double { get }
    var id: String { get }
    var inventoryCode: String? { get }
    var isCancellable: Bool { get }
    var isExpired: Bool  { get }
    var isFullInfo: Bool { get }
    var isPaid: Bool { get }
    var items: [IOrderItem] { get }
    var memberCard: String? { get }
    var note: String? { get }
    var notes: [Int: String]? { get }
    var originalId: String? { get }
    var paymentConfirmer: IOrderPaymentConfirmer? { get }
    var payments: [IOrderPayment] { get }
    var predictCancelTime: String? { get }
    var promotions: [IOrderPromotion] { get }
    var referralCode: String? { get }
    var refOrderCode: String? { get }
    var salesmanId: String? { get }
    var seller: ISeller? { get }
    var sellerId: Int? { get }
    var service: IService? { get }
    var shippingInfo: IShippingInfo? { get }
    var state: Int? { get }
    var tax: Double { get }
    var terminalCode: String? { get }
    var totalDiscount: Double { get }
    var version: Int? { get }
}
