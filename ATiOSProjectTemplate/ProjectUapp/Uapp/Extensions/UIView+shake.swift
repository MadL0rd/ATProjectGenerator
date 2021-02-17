//
//  UIView+shake.swift
//  Uapp
//
//  Created by <#author#> on <#date#>.
//

import UIKit

public extension UIView {

    func shake(count: Float = 2, for duration: TimeInterval = 0.1, withTranslation translation: Float = 3) {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        animation.repeatCount = count
        animation.duration = duration / TimeInterval(animation.repeatCount)
        animation.autoreverses = true
        animation.values = [translation, -translation]
        layer.add(animation, forKey: "shake")
    }
}
