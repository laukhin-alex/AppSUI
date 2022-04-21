//
//  ContentView.swift
//  AppSUI
//
//  Created by Александр on 19.04.2022.
//

import SwiftUI

struct ContentView: View {

    @State private var selection = 0
    var navigationManager = NavigationManager()

    var body: some View {
        TabView(selection: $selection) {
            DashboardScreen(selection: $selection)
                .tabItem {
                    Image(systemName: "star")
                    Text("Start")
                }
                .tag(0)
            ListScreen( manager: navigationManager)
                .tabItem {
                    Image(systemName: "list.number")
                    Text("List")
                }
                .tag(1)
            CatalogScreen()
                .tabItem {
                        Image(systemName: "books.vertical")
                        Text("Catalog")
                }
                .tag(2)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
