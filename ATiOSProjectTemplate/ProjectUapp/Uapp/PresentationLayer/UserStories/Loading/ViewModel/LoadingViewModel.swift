//
//  LoadingViewModel.swift
//  Uapp
//
//  Created by <#author#> on <#date#>.
//

import Foundation

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

