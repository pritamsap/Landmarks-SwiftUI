//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by pritam on 2024-08-28.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    
    
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "heart.fill": "heart")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .blue : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
