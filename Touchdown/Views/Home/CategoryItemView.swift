//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Abdelaziz Bennacer on 10/05/2024.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - PROPERTIES
    let category: Category

    // MARK: - BODY
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                    
                Spacer()
            } //: HSTACK
            .padding()
            .background(
                Color.white
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            )
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }) //: BUTTON
    }
}

// MARK: - PREVIEW
#Preview {
    CategoryItemView(category: categories[0])
}
