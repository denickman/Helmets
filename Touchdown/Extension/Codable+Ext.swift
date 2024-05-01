//
//  Codable+Ext.swift
//  Touchdown
//
//  Created by Denis Yaremenko on 06.04.2024.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate file in Bundle")
        }
        
            // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
             fatalError("Failed to load file from bundle")
        }
        
        // 3. Create a decoder
        let decoder = JSONDecoder()

        // 4. Create a property for the decoded data
        guard let decodedData = try? decoder .decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        // 5. Return to ready-to-use data
        return decodedData
    }
}
