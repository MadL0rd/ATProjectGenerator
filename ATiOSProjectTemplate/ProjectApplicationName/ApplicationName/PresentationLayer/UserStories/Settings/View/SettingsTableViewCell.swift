//
//  SettingsTableViewCell.swift
//  WhyNFT
//
//  Created by Антон Текутов on 12.06.2021.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    static var identifier: String {
        String(describing: self)
    }
    
    private var animationStartTime = Date()

//    var backgroundViewSelected = UIView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    func setDisclosure() {
        setDisclosure(toColour: .res.tintDark()!)
    }
    
    // MARK: - Public methods
    
    func setContent(_ content: MenuRow) {
        imageView?.image = content.image
        textLabel?.text = content.title
        
        textLabel?.textColor = .res.tintDark()

        setDisclosure()
    }
    
    // MARK: - Private setup methods
    
    private func setupView() {
        setDisclosure()
        
        layer.masksToBounds = true
        backgroundColor = .res.backgroundLight()
        imageView?.tintColor = .res.main()
        textLabel?.font = .res.gilroySemibold(size: 14)
        textLabel?.textColor = .res.tintDark()
        accessoryType = .disclosureIndicator
        imageView?.contentMode = .scaleAspectFit
        
        let clearView = UIView()
        clearView.backgroundColor = .clear
        selectedBackgroundView = clearView
                
        makeConstraints()
    }
    
    private func makeConstraints() {
        NSLayoutConstraint.activate([
            
        ])
    }
}
