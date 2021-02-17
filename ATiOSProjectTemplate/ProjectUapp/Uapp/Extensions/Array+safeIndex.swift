//
//  Array+safeIndex.swift
//  Uapp
//
//  Created by <#author#> on <#date#>.
//

import Foundation

extension Collection where Indices.Iterator.Element == Index {
    
    subscript (exist index: Index) -> Iterator.Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
