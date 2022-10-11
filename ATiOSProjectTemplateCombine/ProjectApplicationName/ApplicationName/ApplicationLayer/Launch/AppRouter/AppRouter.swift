//
//  AppRouter.swift
//  ApplicationName
//
//  Created by <#author#> on <#date#>.
//

import UIKit

protocol AppRouter: AnyObject {

	var window: UIWindow! { get set }
    
    func handleLaunch()
}
