//
//  NSObject+configuration.swift
//  SportyBeavers
//
//  Created by Антон Текутов on 04.07.2022.
//

import Foundation

extension NSObjectProtocol {

    @discardableResult
    func with(_ closure: (Self) -> Void) -> Self {
        closure(self)
        return self
    }
}
