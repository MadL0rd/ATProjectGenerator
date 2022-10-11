//
//  UserDefaultsStorage.swift
//  InstaNFT
//
//  Created by Anton Tekutov on 29.08.21.
//

import Foundation

final class UserDefaultsStorage: SettingsStoring {
    
    let userDefaults = UserDefaults.standard
    
    func set<Value>(_ value: Value, for key: StorageItemKey) throws {
        userDefaults.set(value, forKey: key.rawValue)
    }
    
    func deleteValue(for key: StorageItemKey) throws {
        userDefaults.removeObject(forKey: key.rawValue)
    }
    
    func get<T>(forKey key: StorageItemKey) -> T? {
        userDefaults.value(forKey: key.rawValue) as? T
    }
    
    func getBoolValue(for itemKey: StorageItemKey) -> Bool? {
        return get(forKey: itemKey)
    }
    
    func getStringValue(for itemKey: StorageItemKey) -> String? {
        return get(forKey: itemKey)
    }
    
    func set(_ itemValue: Data, for itemKey: StorageItemKey) throws {
        userDefaults.set(itemValue, forKey: itemKey.rawValue)
    }
    func getDataValue(for itemKey: StorageItemKey) -> Data? {
        return get(forKey: itemKey)
    }
}
