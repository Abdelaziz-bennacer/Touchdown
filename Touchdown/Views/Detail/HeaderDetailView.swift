//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Abdelaziz Bennacer on 10/05/2024.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    //let product: Product
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }) //: VSTACK
        .foregroundStyle(.white)
    }
}

// MARK: - PREVIEW
#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
        .background(Color.gray)
}
