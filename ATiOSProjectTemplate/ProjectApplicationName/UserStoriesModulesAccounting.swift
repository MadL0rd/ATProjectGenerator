//
// Auto generated file
//

import UIKit

protocol ModuleGenerator {
    func createModule() -> UIViewController
}

enum UserStoriesModulesDefault: ModuleGenerator {

    case loading

    func createModule() -> UIViewController {
        switch self {
        case .loading: 
            return LoadingCoordinator.createModule()
        }
    }
}

enum UserStoriesModulesWithOutput: ModuleGenerator {

    case loading(output: LoadingOutput)

    func createModule() -> UIViewController {
        switch self {
        case .loading(let output): 
            return LoadingCoordinator.createModule { viewModel in 
                viewModel.output = output
            }
            
        }
    }
}
