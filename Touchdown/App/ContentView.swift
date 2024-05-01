//
//  ContentView.swift
//  Touchdown
//
//  Created by Denis Yaremenko on 05.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            if shop.showingHelmet == false && shop.selectedHelmet == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(
                        .vertical,
                        showsIndicators: false,
                        content: {
                            VStack(spacing: .zero) {
                                FeaturedTabView()
                                  .frame(height: UIScreen.main.bounds.width / 1.475) // This will fix the layout rendering priority issue by using the screen's aspect ratio.
                                  .padding(.vertical, 20)
                                
                                CategoryGridView()
                                
                                TitleView(title: "Helmets")
                                
                                LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                    ForEach(helmets) { helmet in
                                        HelmetItemView(helmet: helmet)
                                            .onTapGesture {
                                                feedback.impactOccurred()
                                                withAnimation(.easeOut) {
                                                    shop.selectedHelmet = helmet
                                                    shop.showingHelmet = true
                                                }
                                            }
                                    }//: Loop
                                })//: Grid
                                .padding(15)
                                
                                TitleView(title: "Brands")
                                
                                BrandGridView()
 
                                FooterView()
                                    .padding(.horizontal)
                            } // VStack
                    }) //: Scroll
                }//: VSStack
                .background(
                    colorBackground.ignoresSafeArea(.all, edges: .all)
            )
            } else {
                ProductDetailView()
            }
        }//: ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}
