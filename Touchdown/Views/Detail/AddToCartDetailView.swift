//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Abdelaziz Bennacer on 10/05/2024.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        Button(action: { feedback.impactOccurred() }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        }) //: BUTTON
        .padding(15)
        .background(
            Color(shop.selectedProduct?.bgColor ?? sampleProduct.bgColor)
        )
        .clipShape(Capsule())
    }
}

// MARK: - PREVIEW
#Preview {
    AddToCartDetailView()
        .environmentObject(Shop())
}
