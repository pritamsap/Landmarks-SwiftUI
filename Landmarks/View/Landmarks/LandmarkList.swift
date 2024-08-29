//
//  LandmarkList.swift
//  Landmarks
//
//  Created by pritam on 2024-08-25.
//

import SwiftUI


struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showLikedOnly = false
    
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter {
            Landmark in (!showLikedOnly || Landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showLikedOnly) {
                    Text("Liked only")
                }
                        
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}
 

#Preview {
    LandmarkList()
        .environment(ModelData())
}

