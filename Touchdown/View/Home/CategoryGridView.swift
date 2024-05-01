//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Denis Yaremenko on 06.04.2024.
//

import SwiftUI

struct CategoryGridView: View {
    
    // MARK: - Properties

    // MARK: - Body
    var body: some View {
        ScrollView(
            .horizontal,
            showsIndicators: false,
            content: {
            LazyHGrid(
                rows: gridLayout,
                alignment: .center,
                spacing: columnSpacing,
                pinnedViews: [],
                content: {
                    Section(
                        header: SectionView(rotateClockwise: false),
                        footer: SectionView(rotateClockwise: true)
                    ) {
                        ForEach(categories) { category in
                            CategoryItemView(category: category)
                            
                        }
                    }
            })//: Grid
        })//: Scroll
        .frame(height: 140)
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
        
    }
}

#Preview {
    CategoryGridView()
}
