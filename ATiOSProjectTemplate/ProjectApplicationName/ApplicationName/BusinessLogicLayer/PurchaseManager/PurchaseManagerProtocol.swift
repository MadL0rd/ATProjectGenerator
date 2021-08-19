//
//  PurchaseManagerProtocol.swift
//  WhyNFT
//
//  Created by Антон Текутов on 19.06.2021.
//

import Foundation

protocol PurchaseManagerProtocol: AnyObject {
    
    var termsOfUsageUrl: URL? { get }
    var privacyPolicyUrl: URL? { get }
    var supportUrl: URL? { get }
    
    func rateApp()    
}
