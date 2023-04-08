//
//  UberSwiftUITutorialApp.swift
//  UberSwiftUITutorial
//
//  Created by Jose Garcia on 4/6/23.
//

import SwiftUI

@main
struct UberSwiftUITutorialApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
