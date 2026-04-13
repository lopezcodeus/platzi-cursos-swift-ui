//
//  ContentView.swift
//  Notes
//
//  Created by admin on 4/13/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            Ellipse()
            .stroke(lineWidth: 5, )
            .foregroundStyle(.red)
            .frame(width: 200, height: 400)
            .rotationEffect(.degrees(30))
            
    }
}

#Preview {
    ContentView()
}
