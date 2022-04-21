//
//  CatalogScreen.swift
//  AppSUI
//
//  Created by Александр on 19.04.2022.
//

import SwiftUI

//final class ProfileViewModel: ObservableObject {
//
//    @Published var isModal: Bool = false
//
//}

struct CatalogScreen: View {
    @State private var showsDetailViewController = false


    var body: some View {

        NavigationView {
            VStack {
                Button(action: {
                    self.showsDetailViewController = true
                }) {
                    Text("Модальное окно")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                }
                .navigationTitle("Таб 3")
            }
        }.sheet(isPresented: $showsDetailViewController) {
            Text("hi! Modal!!!!")

        }
    }
}

struct CatalogScreen_Previews: PreviewProvider {
    static var previews: some View {
        CatalogScreen()
    }
}
