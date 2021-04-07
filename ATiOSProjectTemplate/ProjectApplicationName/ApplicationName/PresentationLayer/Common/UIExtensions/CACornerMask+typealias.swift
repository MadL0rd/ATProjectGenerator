//
//  CACornerMask+typealias.swift
//  ApplicationName
//
//  Created by Антон Текутов on 07.04.2021.
//

import UIKit

extension CACornerMask {
    
    public static var topLeft: CACornerMask {
        return layerMinXMinYCorner
    }
    
    public static var topRight: CACornerMask {
        return layerMaxXMinYCorner
    }
    
    public static var bottomLeft: CACornerMask {
        return layerMinXMaxYCorner
    }
    
    public static var bottomRight: CACornerMask {
        return layerMaxXMinYCorner
    }
}
