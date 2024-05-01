//
//  Shop.swift
//  Touchdown
//
//  Created by Denis Yaremenko on 07.04.2024.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingHelmet: Bool = false
    @Published var selectedHelmet: Helmet? = nil
}
