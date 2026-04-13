//
//  ContentView.swift
//  Notes
//
//  Created by admin on 4/13/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Nunca pares de aprender")
            .font(.system(size: 50))
            .lineLimit(2)
            .multilineTextAlignment(.leading)
            .bold()
            .underline()
    }
}

#Preview {
    ContentView()
}
