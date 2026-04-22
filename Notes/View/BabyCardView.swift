//
//  BabyCardView.swift
//  Notes
//
//  Created by admin on 4/21/26.
//

import SwiftUI

struct BabyCardView: View {
    
    let babyCard: BabyCard
    
    @ViewBuilder
    func cardSmallView() -> some View {
        HStack {
            Text(babyCard.title)
                .font(.headline)
                .padding()
                .background(.blue.opacity(0.5))
                .cornerRadius(8)
            Text(babyCard.body)
            Image(systemName: "heart")
                .foregroundColor(.red)
        }
        .padding()
        .background(.gray.opacity(0.5))
        .cornerRadius(8)
        .listRowSeparator(.hidden)
    }

    @ViewBuilder
    func cardBigView() -> some View {
        HStack {
            Spacer()
            Text(babyCard.title)
                .font(.largeTitle)
                .padding()
                .background(.blue.opacity(0.5))
                .cornerRadius(8)
                .bold()
            Text(babyCard.body)
                .font(.body)
            Spacer()
        }
        .padding()
        .background(.gray.opacity(0.5))
        .cornerRadius(8)
        .listRowSeparator(.hidden)
    }
    
    var body: some View {
        if babyCard.type == .small {
            cardSmallView()
        }
        else if babyCard.type == .big {
            cardBigView()
        }
    }
}

#Preview {
    BabyCardView(babyCard: BabyCard(title: "Titulo1", body: "Body1", type: .big))
}
