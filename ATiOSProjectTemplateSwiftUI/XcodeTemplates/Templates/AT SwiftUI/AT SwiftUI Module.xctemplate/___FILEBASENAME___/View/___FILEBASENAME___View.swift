//___FILEHEADER___

import SwiftUI

extension UserStories {
    typealias ___VARIABLE_productName:identifier___ = ___VARIABLE_productName:identifier___View
}

struct ___VARIABLE_productName:identifier___View<ViewModel>: CoordinatableView where ViewModel: ___VARIABLE_productName:identifier___ViewModelProtocol {

    @ObservedObject var vm: ViewModel
    
    private let navigationTitle: String = <# Page title string #>

    var body: some View {
        VStack() {
            Text("Hello there!")
        }
        .addStyle(.shape.padding.horizontalDefault)
        .addStyle(.configuration.scroll.onOverflow)
        .addStyle(.configuration.navigationTitle.normal(title: navigationTitle))
        .addStyle(.configuration.navigationBackground.normal)
        .modifier(AddCoordinatorChildViewModifier(coordinator: vm.coordinator))
    }
}

struct ___VARIABLE_productName:identifier___View_Previews: PreviewProvider {

    static var previews: some View {
        ___VARIABLE_productName:identifier___View(vm: .impl.vmMockUp())
            .withNavigationView
    }
}
