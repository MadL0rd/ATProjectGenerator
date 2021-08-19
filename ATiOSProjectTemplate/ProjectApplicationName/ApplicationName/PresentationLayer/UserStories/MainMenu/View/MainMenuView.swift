//
//  MainMenuView.swift
//  WhyNFT
//
//  Created by Антон Текутов on 12.06.2021.
//

import UIKit

final class MainMenuView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupView()
    }

    // MARK: - Private methods
    
    private func setupView() {

        makeConstraints()
    }

    private func makeConstraints() {
        NSLayoutConstraint.activate([
            
        ])
    }
}
