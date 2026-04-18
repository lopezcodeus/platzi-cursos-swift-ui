//
//  ContentView.swift
//  Notes
//
//  Created by admin on 4/13/26.
//

import SwiftUI

struct BabyCard: Identifiable {
    let id: UUID = UUID()
    var title: String
    var body: String
    var type: BabyCardType
}

enum BabyCardType {
    case small
    case big
}

struct ContentView: View {
    
    let cards: [BabyCard] = [
        BabyCard(title: "Baby 1", body: "El baby 1 es chido", type: .small),
        BabyCard(title: "Baby 2", body: "El baby 2 es chido", type: .small),
        BabyCard(title: "Baby 3", body: "El baby 3 es chido", type: .big),
        BabyCard(title: "Baby 4", body: "El baby 4 es chido", type: .small),
        BabyCard(title: "Baby 5", body: "El baby 5 es chido", type: .big),
    ]
    
    @ViewBuilder
    func cardSmallView(card: BabyCard) -> some View {
        HStack {
            Text(card.title)
                .font(.headline)
                .padding()
                .background(.blue.opacity(0.5))
                .cornerRadius(8)
            Text(card.body)
            Image(systemName: "heart")
                .foregroundColor(.red)
        }
        .padding()
        .background(.gray.opacity(0.5))
        .cornerRadius(8)
        .listRowSeparator(.hidden)
    }
    
    @ViewBuilder
    func cardBigView(card: BabyCard) -> some View {
        HStack {
            Spacer()
            Text(card.title)
                .font(.largeTitle)
                .padding()
                .background(.blue.opacity(0.5))
                .cornerRadius(8)
                .bold()
            Text(card.body)
                .font(.body)
            Spacer()
        }
        .padding()
        .background(.gray.opacity(0.5))
        .cornerRadius(8)
        .listRowSeparator(.hidden)
    }
    
    var body: some View {
        List {
            ForEach (cards) { card in
                if card.type == .small {
                    cardSmallView(card: card)
                }
                else if card.type == .big {
                    cardBigView(card: card)
                }
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContentView()
}
