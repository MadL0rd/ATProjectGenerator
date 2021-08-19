//
//  PurchaseManager.swift
//  WhyNFT
//
//  Created by Антон Текутов on 19.06.2021.
//

import StoreKit

class PurchaseManager: PurchaseManagerProtocol {
    
    static let shared: PurchaseManagerProtocol = PurchaseManager()

    //        TODO: change url variables

    var termsOfUsageUrl: URL? {
        return URL(string: "https://github.com/MadL0rd")
    }
    
    var privacyPolicyUrl: URL? {
        return URL(string: "https://github.com/MadL0rd")
    }
    
    var supportUrl: URL? {
        return URL(string: "https://github.com/MadL0rd")
    }
    
    func rateApp() {
        SKStoreReviewController.requestReview()
    }
}
