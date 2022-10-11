//
//  LoadingCoordinator.swift
//  ApplicationName
//
//  Created by Антон Текутов on 29.03.2021.
//

import UIKit

final class LoadingCoordinator: DefaultCoordinator {
    
    static func createModule(_ configuration: ((CustomizableLoadingViewModel) -> Void)? = nil) -> UIViewController {
        let view = LoadingViewController()
        let viewModel = LoadingViewModel()
        let coordinator = LoadingCoordinator()

        view.viewModel = viewModel
        view.coordinator = coordinator

        coordinator.transition = view
        
        SharedDependenciesManager.injectDependencies(for: viewModel)
        
        SharedDependenciesManager.injectDependencies(for: viewModel)

        if let configuration = configuration {
            configuration(viewModel)
        }

        return view
    }
}

// MARK: - Interface for view
extension LoadingCoordinator: LoadingCoordinatorProtocol {

}
