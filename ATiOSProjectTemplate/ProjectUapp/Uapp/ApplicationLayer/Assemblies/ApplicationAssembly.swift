//
//  ApplicationAssembly.swift
//  Uapp
//
//  Created by <#author#> on <#date#>.
//

import Foundation

class ApplicationAssembly {
    
    static var appRouter: AppRouter = {
        return MainAppRouter()
    }()
}
