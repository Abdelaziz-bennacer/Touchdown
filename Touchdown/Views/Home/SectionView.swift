//
//  SectionView.swift
//  Touchdown
//
//  Created by Abdelaziz Bennacer on 10/05/2024.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTIES
    @State var rotateClockWise: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90))
            
            Spacer()
        }
        .background(
            colorGray
                .clipShape(RoundedRectangle(cornerRadius: 12))
        )
        .background(
            RoundedRectangle(cornerRadius: 12)
        )
        .frame(width:  85)
    }
}

#Preview {
    SectionView(rotateClockWise: true)
        .padding()
}
