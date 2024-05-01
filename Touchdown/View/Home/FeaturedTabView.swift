//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Denis Yaremenko on 06.04.2024.
//

import SwiftUI

struct FeaturedTabView: View {
  var body: some View {
    TabView {
      ForEach(players) { player in
        FeaturedItemView(player: player)
          .padding(.top, 10)
          .padding(.horizontal, 15)
      }
    } //: TAB
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
  }
}

#Preview {
    FeaturedTabView()
        .background(Color.gray)
}
