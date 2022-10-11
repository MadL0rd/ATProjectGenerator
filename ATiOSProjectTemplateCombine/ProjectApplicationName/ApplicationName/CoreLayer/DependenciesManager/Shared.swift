//
//  Shared.swift
//  Healty
//
//  Created by Антон Текутов on 31.12.2021.
//

import Foundation

class Shared {
    
    static let services = ServicesSingletoneAccounter.self
    static let viewModels = ViewModelsSingletoneAccounter.self
    static let other = ManuallySingletonManager.self
}
