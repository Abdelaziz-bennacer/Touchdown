//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Abdelaziz Bennacer on 10/05/2024.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
