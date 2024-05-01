//
//  AddToCardDetailView.swift
//  Touchdown
//
//  Created by Denis Yaremenko on 07.04.2024.
//

import SwiftUI

struct AddToCardDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })//:Button
        .padding(15)
        .background(
            Color(
                red: shop.selectedHelmet?.red ?? sampleProduct.red,
                green: shop.selectedHelmet?.green ?? sampleProduct.green,
                blue: shop.selectedHelmet?.blue ?? sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCardDetailView()
        .environmentObject(Shop())
}
