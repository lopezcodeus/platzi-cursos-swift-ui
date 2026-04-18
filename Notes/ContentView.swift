//
//  ContentView.swift
//  Notes
//
//  Created by admin on 4/13/26.
//

import SwiftUI

struct ContentView: View {
    
    @ViewBuilder
    func cardSmallView() -> some View {
        HStack {
            Text("Hello World!!")
                .font(.headline)
                .padding()
                .background(.blue.opacity(0.5))
                .cornerRadius(8)
                .bold()
            Text("This is an example of a preview")
            Image(systemName: "heart")
                .foregroundColor(.red)
        }
        .padding()
        .background(.gray.opacity(0.5))
        .cornerRadius(8)
    }
    
    var body: some View {
        List {
            ForEach (0..<10) { _ in
                cardSmallView()
            }
        }
    }
}

#Preview {
    ContentView()
}
