//
//  UIApplication+keyWindow.swift
//  ApplicationName
//
//  Created by Антон Текутов on 01.10.2022.
//

import UIKit

extension UIApplication {
    
    var keyWindow: UIWindow? {
        connectedScenes
            .flatMap({ ($0 as? UIWindowScene)?.windows ?? [] })
            .first(where: { $0.isKeyWindow })
    }
}
