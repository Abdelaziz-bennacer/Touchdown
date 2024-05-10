//
//  ContentView.swift
//  Touchdown
//
//  Created by Abdelaziz Bennacer on 10/05/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {

        if shop.showingProduct == false && shop.selectedProduct == nil {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding()
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0, content: {
                        FeaturedTabView()
                            .frame(minHeight: 256)
                            .padding(.vertical, 10)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15, content: {
                            ForEach(products, id: \.self.id) { product in
                                ProductItemView(product: product)
                                    .onTapGesture {
                                        feedback.impactOccurred()
                                        withAnimation(.easeOut) {
                                            shop.selectedProduct = product
                                            shop.showingProduct = true
                                        }
                                    }
                            } //: LOOP
                        }) //: GRID
                        .padding(15)
                        
                        TitleView(title: "Brands")
                        
                        BrandGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                            .padding(.top, 30)
                    }) //: VSTACK
                }) //: SCROLL
            } //: VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } else {
            ProductDetailView()
        }
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView()
        .environmentObject(Shop())
}
