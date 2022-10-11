//
//  SettingsView.swift
//  ApplicationName
//
//  Created by Антон Текутов on 12.06.2021.
//

import UIKit

final class SettingsView: UIView {
    
    let title = UILabel()
    let tableView = UITableView()
    let footer = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 60))
    let footerLabel = UILabel()

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
        
        addSubview(tableView)
        tableView.separatorColor = .clear
        tableView.backgroundColor = .res.backgroundLight()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.tableFooterView = footer
        tableView.contentInset = UIEdgeInsets(top: 4, left: 0, bottom: 0, right: 0)
        tableView.showsVerticalScrollIndicator = false
        tableView.rowHeight = 64
        
        setupFooter()
        setupTitle()
        
        makeConstraints()
    }
    
    private func setupTitle() {
        addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = .res.settingsTitle()
        title.font = .res.gilroyBold(size: 18)
        title.numberOfLines = 2
        title.textAlignment = .left
        title.textColor = .res.tintDark()
    }
    
    private func setupFooter() {
        footer.addSubview(footerLabel)
        footerLabel.translatesAutoresizingMaskIntoConstraints = false
        footerLabel.font = .res.gilroySemibold(size: 14)
        footerLabel.textAlignment = .center
        footerLabel.numberOfLines = 0
        footerLabel.textColor = .res.gray()
        footerLabel.text = "\(String.res.settingsNotAffiliated())\n\n\(String.res.settingsVersion()): \(Bundle.main.versionNumber) \(Bundle.main.buildNumber)"
    }

    private func makeConstraints() {
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: topAnchor, constant: .res.statusBarHeight + 12),
            title.widthAnchor.constraint(equalTo: widthAnchor, constant: -48),
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            tableView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor),
            tableView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor),
            
            footerLabel.topAnchor.constraint(equalTo: footer.topAnchor, constant: 20),
            footerLabel.centerXAnchor.constraint(equalTo: footer.centerXAnchor),
            footerLabel.widthAnchor.constraint(equalTo: tableView.widthAnchor, multiplier: 0.9)
        ])
    }
}
