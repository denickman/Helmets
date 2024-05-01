//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Denis Yaremenko on 07.04.2024.
//

import SwiftUI

struct HeaderDetailView: View {
    
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    
    
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective gear")
            Text(shop.selectedHelmet?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })//: VStack
        .foregroundColor(.white)
    }
}

#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
}
