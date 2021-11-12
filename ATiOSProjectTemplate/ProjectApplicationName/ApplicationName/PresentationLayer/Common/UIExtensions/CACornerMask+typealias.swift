//
//  CACornerMask+typealias.swift
//  ApplicationName
//
//  Created by Антон Текутов on 07.04.2021.
//

import UIKit

extension CACornerMask {
    
    public static var all: [CACornerMask] {
        return [topLeft, topRight, bottomLeft, bottomRight]
    }
    
    public static var top: [CACornerMask] {
        return [topLeft, topRight, bottomLeft, bottomRight]
    }
    
    public static var bottom: [CACornerMask] {
        return [bottomLeft, bottomRight]
    }
    
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
        return layerMaxXMaxYCorner
    }
}
