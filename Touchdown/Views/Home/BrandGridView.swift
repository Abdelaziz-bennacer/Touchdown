//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Abdelaziz Bennacer on 10/05/2024.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands, id: \.self.id) { brand in
                    BrandItemView(brand: brand)
                }
            }) //: GRID
            .frame(height: 200)
            .padding(15)
        }) //: SCROLL
    }
}

// MARK: - PREVIEW
#Preview {
    BrandGridView()
}
