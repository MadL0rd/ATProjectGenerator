//
//  SettingsViewModelProtocol.swift
//  WhyNFT
//
//  Created by Антон Текутов on 12.06.2021.
//

import Foundation

protocol SettingsViewModelProtocol: AnyObject {
    
    var termsOfUsageUrl: URL? { get }
    var privacyPolicyUrl: URL? { get }
    var supportUrl: URL? { get }

    func rateApp()
}
