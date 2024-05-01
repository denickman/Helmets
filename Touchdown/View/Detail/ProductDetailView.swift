//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Denis Yaremenko on 07.04.2024.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // NavBar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // Header
            HeaderDetailView()
                .padding(.horizontal)
            
            // Detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // Detail bottom part
            VStack(alignment: .center, spacing: 0, content: {
                // Ratings + sizes
                
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                
                // Description
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedHelmet?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })//: Scroll
                
                // Quantity + favorite
                
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                // Add to cart
                AddToCardDetailView()
                    .padding(.bottom, 20)
                
            })//: VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
        })//:VSTack
        .zIndex(0)
        
        .ignoresSafeArea(.all)
        .background(
            Color(
                red: shop.selectedHelmet?.red ?? sampleProduct.red,
                green: shop.selectedHelmet?.green ?? sampleProduct.green,
                blue: shop.selectedHelmet?.blue ?? sampleProduct.blue
            )
            .ignoresSafeArea(.all, edges: .all)
        )
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
