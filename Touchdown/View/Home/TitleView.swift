//
//  TitleView.swift
//  Touchdown
//
//  Created by Denis Yaremenko on 06.04.2024.
//

import SwiftUI

struct TitleView: View {
    
    // MARK: - Properties
    var title: String
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            Spacer()
        }//: HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
        
    }
}

#Preview {
    TitleView(title: "Helmet")
}
