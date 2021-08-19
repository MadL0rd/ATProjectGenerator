//
//  AboutUsView.swift
//  Pharma
//
//  Created by Антон Текутов on 13.06.2021.
//

import UIKit

final class AboutUsView: UIView {
    
    let stack = UIStackView()
    let titleLabel = UILabel()
    let textLabel = UILabel()
    let emailLabel = CopyLabelView()
    
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
        backgroundColor = .res.backgroundLight()
        
        addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 40
        
        stack.addArrangedSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = .res.aboutUsTitle()
        titleLabel.font = .res.gilroyBold(size: 18)
        titleLabel.textColor = .res.tintDark()
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0

        stack.addArrangedSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.text = .res.aboutUsText()
        textLabel.font = .res.gilroyRegular(size: 16)
        textLabel.textColor = .res.tintDark()
        textLabel.textAlignment = .left
        textLabel.numberOfLines = 0
        
        stack.addArrangedSubview(emailLabel)
        emailLabel.setText(labelText: Contacts.mainContactEmail, copyText: Contacts.mainContactEmail)
        
        makeConstraints()
    }

    private func makeConstraints() {
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: topAnchor, constant: .res.statusBarHeight + 12),
            stack.leftAnchor.constraint(equalTo: leftAnchor, constant: 24),
            stack.rightAnchor.constraint(equalTo: rightAnchor, constant: -24)
        ])
    }
}
