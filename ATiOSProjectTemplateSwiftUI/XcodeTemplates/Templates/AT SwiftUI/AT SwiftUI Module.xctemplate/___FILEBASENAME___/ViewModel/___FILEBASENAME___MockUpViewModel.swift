//___FILEHEADER___

import SwiftUI
import Combine

class ___VARIABLE_productName:identifier___MockUpViewModel: ___VARIABLE_productName:identifier___ViewModelProtocol {
    
    // MARK: - Private properties
    
    private var bindings = Set<AnyCancellable>()
    
    // MARK: - Public properties
    /// Use the @Published property wrapper to trigger view updates
    
    @Published var coordinator: ScreenViewCoordinator = .init()
    
    // MARK: - Public methods
    
    init() {
        
        bind()
    }
    
    // MARK: - Private methods
    
    private func bind() {
        
    }
}
