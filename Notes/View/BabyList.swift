//
//  BabyListData.swift
//  Notes
//
//  Created by admin on 4/21/26.
//

import SwiftUI

struct BabyList: View {
    
    let cards: [BabyCard] = [
        BabyCard(title: "Baby 1", body: "El baby 1 es chido", type: .small),
        BabyCard(title: "Baby 2", body: "El baby 2 es chido", type: .small),
        BabyCard(title: "Baby 3", body: "El baby 3 es chido", type: .big),
        BabyCard(title: "Baby 4", body: "El baby 4 es chido", type: .small),
        BabyCard(title: "Baby 5", body: "El baby 5 es chido", type: .big),
    ]
    
    var body: some View {
        List {
            ForEach (cards) { card in
                BabyCardView(babyCard: card)
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    BabyList()
}
