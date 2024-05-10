//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Abdelaziz Bennacer on 10/05/2024.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockWise: false),
                    footer: SectionView(rotateClockWise: true)
                ) {
                    ForEach(categories) { category in
                            CategoryItemView(category: category)
                    }
                }
            }) //: GRID
            .frame(height: 140)
            .padding(.vertical, 10)
            .padding(.horizontal, 15)
        }) //: SCROLL
    }
}


// MARK: - PREVIEW
#Preview {
    CategoryGridView()
}
