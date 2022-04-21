//
//  DashboardScreen.swift
//  AppSUI
//
//  Created by Александр on 19.04.2022.
//

import SwiftUI

final class openedViewModel: ObservableObject {

    @Published var isModal: Bool = false

}
class NavigationManager: ObservableObject {
    @Published var goToThird: Bool = false
}
struct DashboardScreen: View {
    @State var isNavigate: Bool = false
    @Binding var selection: Int
    @StateObject var viewModel: openedViewModel = .init()
    @State var isActive: Bool = false
    var navigationManager = NavigationManager()

    var body: some View {
        NavigationView {
            VStack {

                Button(action: {
                    self.selection = 1
                    
                    isNavigate.toggle()
                    isActive = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        navigationManager.goToThird = true
                        
                    }

                }, label: {
                    Image(systemName: "brain.head.profile")
                    Text("Переход!")
                })
                .foregroundColor(Color.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(20)

                
                .navigationTitle("Таб 1")
            }
        }
    }
}



