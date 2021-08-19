//
//  MainMenuViewModel.swift
//  WhyNFT
//
//  Created by Антон Текутов on 12.06.2021.
//

final class MainMenuViewModel {
	var output: MainMenuOutput?
}

// MARK: - Configuration
extension MainMenuViewModel: CustomizableMainMenuViewModel {

}

// MARK: - Interface for view
extension MainMenuViewModel: MainMenuViewModelProtocol {

}

