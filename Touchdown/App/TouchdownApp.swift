//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Denis Yaremenko on 05.04.2024.
//

import SwiftUI

@main
struct TouchdownApp: App {
    // MARK: - Properties
    
    
    
    // MARK: - Body
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
