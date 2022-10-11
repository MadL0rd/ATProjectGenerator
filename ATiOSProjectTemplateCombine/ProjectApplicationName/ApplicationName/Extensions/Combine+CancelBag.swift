//
//  Combine+CancelBag.swift
//  SportyBeavers
//
//  Created by Антон Текутов on 08.08.2022.
//

import Combine

typealias CancelBag = Set<AnyCancellable>

extension CancelBag {
    
    mutating func cancelAll() {
        forEach { $0.cancel() }
        removeAll()
    }
}
