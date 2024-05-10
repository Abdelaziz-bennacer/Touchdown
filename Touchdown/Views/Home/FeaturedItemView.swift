//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Abdelaziz Bennacer on 10/05/2024.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - PROPERTIES
    let player: Player
    
    // MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

// MARK: - PREVIEW
#Preview {
    FeaturedItemView(player: players[0])
}
