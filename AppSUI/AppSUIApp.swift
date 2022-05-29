//
//  AppSUIApp.swift
//  AppSUI
//
//  Created by Александр on 19.04.2022.
//

import SwiftUI

@main
struct AppSUIApp: App {


    @Environment(\.scenePhase)  var scenePhase

    var body: some Scene {
        WindowGroup {
            ContentView()
                
        }
        .onChange(of: scenePhase) { newScenePhase in
            switch newScenePhase {
            case .active:
                print("App is active")
            case .inactive:
                print("App is inactive")
            case .background:
                print("App is in background")
            @unknown default:
                print("")
            }

        }
    }
}
