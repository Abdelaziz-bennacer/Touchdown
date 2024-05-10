//
//  LogoView.swift
//  Touchdown
//
//  Created by Abdelaziz Bennacer on 10/05/2024.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
        } //: HSTACK
    }
}

#Preview {
    LogoView()
}
