//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Abdelaziz Bennacer on 10/05/2024.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - PROPERTIES
    let brand: Brand
    
    // MARK: - BODY
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(
                Color.white
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            )
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
    }
}

// MARK: - PREVIEW
#Preview {
    BrandItemView(brand: brands[0])
        .background(colorBackground)
}
