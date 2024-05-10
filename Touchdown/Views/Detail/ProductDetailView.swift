//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Abdelaziz Bennacer on 10/05/2024.
//

import SwiftUI

struct ProductDetailView: View {
   // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.bottom)
                .padding(.top, windowScene?.windows.first?.safeAreaInsets.top)
            
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0, content: {
                // RATINGS + SIZE
                RatingsSizesDetailView()
                    .padding(.horizontal)
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                // DESCRIPTION
                ScrollView(.vertical, showsIndicators: false, content: {
                    HStack {
                        Spacer(minLength: 15)
                        Text(shop.selectedProduct?.description ?? sampleProduct.description)
                            .font(.system(.body, design: .rounded))
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }
                }) //: SCROLL
                
                // QUANTITY + FAVOURITE
                QuantityFavouriteDetailView()
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                
                // ADD TO CART
                AddToCartDetailView()
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                
                Spacer(minLength: 15)
            }) //: VSTACK
            //.padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
        }) //: VSTACK
        
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(shop.selectedProduct?.bgColor ?? sampleProduct.bgColor)
                .ignoresSafeArea(.all, edges: .all)
        )
    }
}


// MARK: - PREVIEW
#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
