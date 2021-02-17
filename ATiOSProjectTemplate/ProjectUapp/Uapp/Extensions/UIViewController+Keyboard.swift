//
//  UIViewController+Keyboard.swift
//  Uapp
//
//  Created by <#author#> on <#date#>.
//

import UIKit

extension UIViewController {
    
    func addKeyboardObserver(selector: Selector) {
        NotificationCenter.default.addObserver(self,
                                               selector: selector,
                                               name: UIResponder.keyboardWillChangeFrameNotification,
                                               object: nil)
    }
    
    func addTapGestureToHideKeyboard(to view: UIView? = nil) {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard(_:)))
        if let view = view {
            view.addGestureRecognizer(tapGesture)
        } else {
            self.view.addGestureRecognizer(tapGesture)
        }
    }
    
    @objc private func dismissKeyboard (_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
}
