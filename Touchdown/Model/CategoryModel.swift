//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Denis Yaremenko on 06.04.2024.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
