//
//  ContentView.swift
//  Landmarks
//
//  Created by pritam on 2024-08-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
