//
//  UIScrollView+ScrollToBottom.swift
//  Uapp
//
//  Created by <#author#> on <#date#>.
//

import UIKit

extension UIScrollView {
    
    func scrollsToBottom(animated: Bool) {
        let bottomOffset = CGPoint(x: 0, y: contentSize.height - bounds.size.height)
        setContentOffset(bottomOffset, animated: animated)
    }
}
