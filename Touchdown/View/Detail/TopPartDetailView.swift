//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Denis Yaremenko on 07.04.2024.
//

import SwiftUI

struct TopPartDetailView: View {
    
    // MARK: - Properties
    
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    
    
    // MARK: - Body
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            // Price
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedHelmet?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            Spacer()
            // Photo
            Image(shop.selectedHelmet?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        })//: HStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

#Preview {
    TopPartDetailView()
        .environmentObject(Shop())
}
