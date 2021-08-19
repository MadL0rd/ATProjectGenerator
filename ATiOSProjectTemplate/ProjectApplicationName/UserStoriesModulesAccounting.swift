//
// Auto generated file
//

import UIKit

protocol ModuleGenerator {
    func createModule() -> UIViewController
}

enum UserStoriesModulesDefault: ModuleGenerator {

    case settings
    case aboutUs
    case loading
    case mainMenu

    func createModule() -> UIViewController {
        switch self {
        case .settings: 
            return SettingsCoordinator.createModule()
        case .aboutUs: 
            return AboutUsCoordinator.createModule()
        case .loading: 
            return LoadingCoordinator.createModule()
        case .mainMenu: 
            return MainMenuCoordinator.createModule()
        }
    }
}

enum UserStoriesModulesWithOutput: ModuleGenerator {

    case settings(output: SettingsOutput)
    case aboutUs(output: AboutUsOutput)
    case loading(output: LoadingOutput)
    case mainMenu(output: MainMenuOutput)

    func createModule() -> UIViewController {
        switch self {
        case .settings(let output): 
            return SettingsCoordinator.createModule { viewModel in 
                viewModel.output = output
            }
            
        case .aboutUs(let output): 
            return AboutUsCoordinator.createModule { viewModel in 
                viewModel.output = output
            }
            
        case .loading(let output): 
            return LoadingCoordinator.createModule { viewModel in 
                viewModel.output = output
            }
            
        case .mainMenu(let output): 
            return MainMenuCoordinator.createModule { viewModel in 
                viewModel.output = output
            }
            
        }
    }
}
