//
//  Shop.swift
//  Touchdown
//
//  Created by Abdelaziz Bennacer on 10/05/2024.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
