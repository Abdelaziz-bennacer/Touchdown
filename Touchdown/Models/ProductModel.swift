//
//  ProductModel.swift
//  Touchdown
//
//  Created by Abdelaziz Bennacer on 10/05/2024.
//

import Foundation
import SwiftUI

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    // COMPUTED PROPERTIES
    var red: Double { return color[0] }
    var green: Double { return color[1] }
    var blue: Double { return color[2] }
    
    var bgColor: Color {
        return Color(red: color[0], green: color[1], blue: color[2])
    }
    
    var composedPrice: String {
        return "$\(price)"
    }

}
