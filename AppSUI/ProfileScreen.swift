//
//  ProfileScreen.swift
//  AppSUI
//
//  Created by Александр on 19.04.2022.
//

import SwiftUI

final class ProfileViewModel: ObservableObject {

    @Published var isModal: Bool = false

}

struct ProfileScreen: View {

    @State var isNavigate: Bool = false

    @StateObject var viewModel: ProfileViewModel = .init()

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Button {
                    isNavigate.toggle()
                } label: {
                    Text("Navigate Button")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                }

                Divider()
                PersonInfoView(isNavigate: $isNavigate )
            }
            .navigationTitle("Profile")
        }
    }
}

struct PersonInfoView: View {

    @Binding var isNavigate: Bool

    @EnvironmentObject var profileViewModel: ProfileViewModel

    var body: some View {
        ScrollView {
            NavigationLink(
                destination: Text("Destination"),
                isActive: $isNavigate,
                label:  {
                    Text("Navigation")
                })
            Spacer().frame(height: 100)
            ScrollView(.horizontal) {
                HStack(spacing: -2) {
                    Group {
                        Image(systemName: "lasso")
                        Image(systemName: "lasso")
                        Image(systemName: "lasso")
                        Image(systemName: "lasso")
                        Image(systemName: "lasso")
                        Image(systemName: "lasso")
                        Image(systemName: "lasso")
                        Image(systemName: "lasso")
                        Image(systemName: "lasso")
                        Image(systemName: "lasso")
                    }
                    Image(systemName: "lasso")
                    Image(systemName: "lasso")
                    Image(systemName: "lasso")
                }.font(.largeTitle)
            }
            .padding(.vertical, 20)
            Spacer().frame(height: 100)
            Image(systemName: "megaphone")
                .font(.largeTitle)
                .onTapGesture {
                    profileViewModel.isModal.toggle()
                }
                .sheet(isPresented: $profileViewModel.isModal)  {
                    Text("I am the Modal! \(profileViewModel.isModal.description)")

                }
            
        }.onAppear {
            print("PersonInfoView is appeared")
        }.onDisappear {
            print("PersonInfoView is disappeared")
        }

    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
