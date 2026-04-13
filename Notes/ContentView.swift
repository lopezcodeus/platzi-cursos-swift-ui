//
//  ContentView.swift
//  Notes
//
//  Created by admin on 4/13/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Circle()
            .background(.green)
            .padding()
            .background(.yellow)
            .frame(width: 200, height: 200)
    }
}

#Preview {
    ContentView()
}
