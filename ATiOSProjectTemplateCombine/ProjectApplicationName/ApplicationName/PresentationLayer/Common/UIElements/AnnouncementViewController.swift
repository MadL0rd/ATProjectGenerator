//
//  AnnouncementViewController.swift
//  ApplicationName
//
//  Created by <#author#> on <#date#>.
//

import UIKit

class AnnouncementViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .res.backgroundLight()
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.font = .res.gilroyBold(size: 24)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = .res.announcementText()
        label.textColor = .res.main()
        
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
        ])
    }
}
