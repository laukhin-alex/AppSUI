//
//  ListScreen.swift
//  AppSUI
//
//  Created by Александр on 20.04.2022.
//

import SwiftUI


struct face: View {
    
    var body: some View {
        Image(systemName: "face.smiling.fill").font(.largeTitle)
    }
}

struct ListScreen: View {

    @State var isNavigate: Bool = false
    @ObservedObject var manager: NavigationManager
    

    var body: some View {

        VStack {

            
            NavigationView {
                List {


                    ScrollView {
                        NavigationLink(
                            destination: Text("Destination"),
                            isActive: $manager.goToThird,
                            label:  {
                                Text("Navigation")
                                Image(systemName: "lasso").font(.largeTitle)
                            })
                Divider()
                        ScrollView {
                            NavigationLink(
                                destination: Text("Application"),
                                isActive: $isNavigate,
                                label:  {
                                    Text("Application").lineLimit(1)
//                                    Spacer().frame(width: 200)
                                    Image(systemName: "applescript.fill").font(.largeTitle).frame( alignment: .trailing)
                                })
                            Spacer().frame(height: 10)


                                .navigationTitle("Таб 2")
                        }
                    }
                }

            }
        }
    }
}

//struct ListScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        ListScreen()
//    }
//}
