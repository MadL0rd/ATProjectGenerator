//
//  String+capitalizingFirstLetter.swift
//  ApplicationName
//
//  Created by <#author#> on <#date#>.
//

import Foundation

extension String {
    
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
