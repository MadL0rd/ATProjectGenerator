//
//  AppRouter.swift
//  Uapp
//
//  Created by <#author#> on <#date#>.
//

import UIKit

protocol AppRouter: class {

	var window: UIWindow! { get set }
    
    func handleLaunch()
}
