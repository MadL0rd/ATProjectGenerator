//
//  TabBarModuleTransitionHandler.swift
//  WhyNFT
//
//  Created by Антон Текутов on 12.06.2021.
//

import Foundation

protocol TabBarModuleTransitionHandler: ModuleTransitionHandler {
    
    var selectedIndex: Int { get set }
}
