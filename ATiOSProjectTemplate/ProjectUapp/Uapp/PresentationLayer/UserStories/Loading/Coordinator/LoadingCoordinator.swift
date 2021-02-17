//
//  LoadingCoordinator.swift
//  Uapp
//
//  Created by <#author#> on <#date#>.
//

import UIKit

final class LoadingCoordinator {
    
    weak var transition: ModuleTransitionHandler!

    static func createModule(_ configuration: ((CustomizableLoadingViewModel) -> Void)? = nil) -> UIViewController {
        let view = LoadingViewController()
        let viewModel = LoadingViewModel()
        let coordinator = LoadingCoordinator()

        view.viewModel = viewModel
        view.coordinator = coordinator

        coordinator.transition = view
        
        if let configuration = configuration {
            configuration(viewModel)
        }

        return view
    }
}

// MARK: - Interface for view

extension LoadingCoordinator: LoadingCoordinatorProtocol {
    
}
