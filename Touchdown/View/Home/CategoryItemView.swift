//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Denis Yaremenko on 06.04.2024.
//

import SwiftUI

struct CategoryItemView: View {
    
    // MARK: - Properties
    
    let category: Category
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {},
               label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }//: HStack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        })//: Button
    }
}

#Preview {
    CategoryItemView(category: categories[.zero])
}
