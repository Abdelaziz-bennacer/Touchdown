//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Abdelaziz Bennacer on 10/05/2024.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                feedback.impactOccurred()
                withAnimation(.easeIn) {
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundStyle(.white)
            }) //: BUTTON
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundStyle(.white)
            })
        } //: HSTACK
    }
}

// MARK: - PREVIEW
#Preview {
    NavigationBarDetailView()
        .environmentObject(Shop())
        .background(Color.gray)
}
