//
//  ListScreen.swift
//  AppSUI
//
//  Created by Александр on 20.04.2022.
//

import SwiftUI

struct ListScreen: View {

    @State var isNavigate: Bool = false

    @StateObject var viewModel: ProfileViewModel = .init()

    var body: some View {
        VStack {
            Image(systemName: "face.smiling.fill").font(.largeTitle)
            Spacer().frame(height: -20)
            NavigationView {
                List(0..<5) { textField in

                    ScrollView {
                        NavigationLink(
                            destination: SwiftUI.Text("Destination"),
                            isActive: $isNavigate,
                            label:  {
                                SwiftUI.Text("Navigation")
                                Image(systemName: "lasso").font(.largeTitle)
                            })
                        Spacer().frame(height: 10)

                    }

                }.onAppear {
                    print("PersonInfoView is appeared")
                }.onDisappear {
                    print("PersonInfoView is disappeared")
                }

            }
        }

    }
}



struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen()
    }
}
