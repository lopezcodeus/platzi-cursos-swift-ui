//
//  ContentView.swift
//  Notes
//
//  Created by admin on 4/13/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Rectangle()
            .frame(width: 200, height: 200)
            .foregroundColor(.yellow)
            .cornerRadius(8)
            .opacity(0.5)
    }
}

#Preview {
    ContentView()
}
