//
//  AboutUsViewController.swift
//  Pharma
//
//  Created by Антон Текутов on 13.06.2021.
//

import UIKit

final class AboutUsViewController: UIViewController {

    var viewModel: AboutUsViewModelProtocol!
    var coordinator: AboutUsCoordinatorProtocol!
    
    private var _view: AboutUsView {
        return view as! AboutUsView
    }

    override func loadView() {
        self.view = AboutUsView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        configureSelf()
    }

    private func configureSelf() {
        
    }
}
