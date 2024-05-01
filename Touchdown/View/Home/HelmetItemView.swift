//
//  HelmetItemView.swift
//  Touchdown
//
//  Created by Denis Yaremenko on 07.04.2024.
//

import SwiftUI

struct HelmetItemView: View {
    
    let helmet: Helmet
    

    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            // Photo
            ZStack {
                Image(helmet.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//: ZStack
            .background(Color.init(
                red: helmet.red,
                green: helmet.green,
                blue: helmet.blue
            ))
                .cornerRadius(12)
            
            // Name
            Text(helmet.name)
                .font(.title3)
                .fontWeight(.black)
            
            // Price
            Text(helmet.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        })//: VStack
    }
}

struct HelmetItemView_Preview: PreviewProvider {
    static var previews: some View {
        HelmetItemView(helmet: helmets[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

#Preview {
    HelmetItemView(helmet: helmets[0])
}
