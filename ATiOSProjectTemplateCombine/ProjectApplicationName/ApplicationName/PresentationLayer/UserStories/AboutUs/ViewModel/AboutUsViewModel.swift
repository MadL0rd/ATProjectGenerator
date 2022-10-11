//
//  AboutUsViewModel.swift
//  Pharma
//
//  Created by Антон Текутов on 13.06.2021.
//

final class AboutUsViewModel {
	var output: AboutUsOutput?
}

// MARK: - Configuration
extension AboutUsViewModel: CustomizableAboutUsViewModel {

}

// MARK: - Interface for view
extension AboutUsViewModel: AboutUsViewModelProtocol {

}

