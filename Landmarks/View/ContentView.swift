//
//  ContentView.swift
//  Landmarks
//
//  Created by pritam on 2024-08-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack(alignment: .leading) {
                Text("Nepal Landmarks")
                    .font(.largeTitle)
                HStack {
                    Text("Mount Everest")
                        .font(.subheadline)
                    Spacer()
                    Text("Mustang")
                        .font(.subheadline)
                }
                .font(.subheadline)
                               .foregroundStyle(.secondary)
                Divider()


                               Text("About Mount Everest")
                                   .font(.title2)
                Text("The highest mountain in the world.").foregroundStyle(.secondary)
            }
            .padding()
            Spacer()
        }
            
    }
}

#Preview {
    ContentView()
}
