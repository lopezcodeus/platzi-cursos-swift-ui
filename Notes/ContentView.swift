//
//  ContentView.swift
//  Notes
//
//  Created by admin on 4/13/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Image(systemName: "star.fill")
//            .font(.largeTitle)
//            .bold()
//            .foregroundStyle(.yellow)
        Image(systemName: "star.fill")
            .resizable()
            .frame(width: 100, height: 100)
            .foregroundStyle(.yellow)
    }
}

#Preview {
    ContentView()
}
