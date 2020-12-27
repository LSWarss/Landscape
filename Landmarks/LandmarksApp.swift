//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Lukasz Stachnik on 18/12/2020.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        .commands {
            LandmarkCommands()
        }
        
    }
}
