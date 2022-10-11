//
//  KeychainStorageError.swift
//  InstaNFT
//
//  Created by Anton Tekutov on 29.08.21.
//

import Foundation

enum KeychainStorageError: Error {
    case itemNotFound
    case failedToSetValue
    case failedToUpdateValue
    case failedToDeleteValue
    case failedToConvertToData
}
