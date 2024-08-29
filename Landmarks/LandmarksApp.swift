//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by pritam on 2024-08-25.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
