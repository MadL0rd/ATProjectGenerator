//
//  AboutUsCoordinator.swift
//  Pharma
//
//  Created by Антон Текутов on 13.06.2021.
//

import UIKit

final class AboutUsCoordinator: DefaultCoordinator {
    
    static func createModule(_ configuration: ((CustomizableAboutUsViewModel) -> Void)? = nil) -> UIViewController {
        let view = AboutUsViewController()
        let viewModel = AboutUsViewModel()
        let coordinator = AboutUsCoordinator()

        view.viewModel = viewModel
        view.coordinator = coordinator

        coordinator.transition = view
        
        ViewModelsSingletoneAccounter.injectDependencies(for: viewModel)

        if let configuration = configuration {
            configuration(viewModel)
        }

        return view
    }
}

// MARK: - Interface for view
extension AboutUsCoordinator: AboutUsCoordinatorProtocol {

}
