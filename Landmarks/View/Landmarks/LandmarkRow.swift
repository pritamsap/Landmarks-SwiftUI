//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by pritam on 2024-08-25.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
                  landmark.image
                      .resizable()
                      .frame(width: 50, height: 50)
                  Text(landmark.name)


                  Spacer()
            
            
                  if landmark.isFavorite {
                      Image(systemName:"heart.fill")
                          .foregroundColor(.blue)
                }
              }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])

    }
}

