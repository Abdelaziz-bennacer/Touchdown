//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Abdelaziz Bennacer on 10/05/2024.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
