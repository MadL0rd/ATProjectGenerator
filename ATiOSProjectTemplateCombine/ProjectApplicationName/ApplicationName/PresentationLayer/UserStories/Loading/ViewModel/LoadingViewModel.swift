//
//  LoadingViewModel.swift
//  ApplicationName
//
//  Created by Антон Текутов on 29.03.2021.
//

final class LoadingViewModel {
	var output: LoadingOutput?
}

// MARK: - Configuration
extension LoadingViewModel: CustomizableLoadingViewModel {

}

// MARK: - Interface for view
extension LoadingViewModel: LoadingViewModelProtocol {
    
    func startConfiguration() {
        
    }
}

