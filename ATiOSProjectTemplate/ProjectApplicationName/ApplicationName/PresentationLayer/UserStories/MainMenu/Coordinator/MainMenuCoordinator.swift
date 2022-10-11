//
//  MainMenuCoordinator.swift
//  ApplicationName
//
//  Created by Антон Текутов on 12.06.2021.
//

import UIKit

final class MainMenuCoordinator: DefaultCoordinator {
    
    static func createModule(_ configuration: ((CustomizableMainMenuViewModel) -> Void)? = nil) -> UIViewController {
        let view = MainMenuViewController()
        let viewModel = MainMenuViewModel()
        let coordinator = MainMenuCoordinator()

        view.viewModel = viewModel
        view.coordinator = coordinator

        coordinator.transition = view
        
        SharedDependenciesManager.injectDependencies(for: viewModel)

        if let configuration = configuration {
            configuration(viewModel)
        }

        return view
    }
}

// MARK: - Interface for view
extension MainMenuCoordinator: MainMenuCoordinatorProtocol {
    
    func generateSettingsModule() -> UIViewController {
        let vc = SettingsCoordinator.createModule()
        return vc
    }
}
