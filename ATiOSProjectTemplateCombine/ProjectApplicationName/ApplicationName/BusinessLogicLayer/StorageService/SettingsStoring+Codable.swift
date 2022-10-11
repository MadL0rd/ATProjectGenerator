//
//  SettingsStoring+Codable.swift
//  PhantomVPN
//
//  Created by Антон Текутов on 10.07.2022.
//

import Foundation

extension SettingsStoring {
    
    func setCodable<DataType: Codable>(_ itemValue: DataType, for itemKey: StorageItemKey) throws {
        let itemData = try JSONEncoder().encode(itemValue)
        try set(itemData, for: itemKey)
    }
    
    func getCodable<DataType: Codable>(for itemKey: StorageItemKey) throws -> DataType? {
        guard let data = getDataValue(for: itemKey)
        else { throw KeychainStorageError.itemNotFound }
        
        let parsedData = try JSONDecoder().decode(DataType.self, from: data)
        
        return parsedData
    }
}
