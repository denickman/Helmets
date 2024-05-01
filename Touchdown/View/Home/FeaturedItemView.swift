//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Denis Yaremenko on 06.04.2024.
//

import SwiftUI

struct FeaturedItemView: View {
    
    // MARK: - Properties
    let player: Player
    
    
    // MARK: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
//            .frame(width: 200, height: 200)
    }
}

struct FeaturedItemView_Preview: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
