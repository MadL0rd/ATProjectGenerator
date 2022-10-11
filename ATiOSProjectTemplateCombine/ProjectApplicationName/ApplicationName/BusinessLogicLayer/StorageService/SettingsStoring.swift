//
//  SettingsStoring.swift
//  InstaNFT
//
//  Created by Anton Tekutov on 29.08.21.
//

import Foundation

protocol SettingsStoring {
    func set(_ itemValue: Bool, for itemKey: StorageItemKey) throws
    func set(_ itemValue: String, for itemKey: StorageItemKey) throws
    func set(_ itemValue: Data, for itemKey: StorageItemKey) throws

    func getBoolValue(for itemKey: StorageItemKey) -> Bool?
    func getStringValue(for itemKey: StorageItemKey) -> String?
    func getDataValue(for itemKey: StorageItemKey) -> Data?

    func deleteValue(for itemKey: StorageItemKey) throws
}
