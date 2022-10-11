//
//  ManuallySingletonManager.swift
//  Healty
//
//  Created by Антон Текутов on 31.12.2021.
//

import Foundation

class ManuallySingletonManager {
    
    static let secureStorage: SettingsStoring = SecureStorage()
    static let userDefaultsStorage: SettingsStoring = UserDefaultsStorage()
}
