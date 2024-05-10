//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Abdelaziz Bennacer on 10/05/2024.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - PROPERTIES
    let product: Product
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            // PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(
                Color(product.bgColor)
            )
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            // NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // PRICE
            Text(product.composedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        
        }) //: VSTACK
    }
}

// MARK: - PREVIEW
#Preview {
    ProductItemView(product: products[0])
}
