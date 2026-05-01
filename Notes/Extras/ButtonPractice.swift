//
//  ButtonPractice.swift
//  Notes
//
//  Created by admin on 5/1/26.
//

import SwiftUI

struct ButtonPractice: View {
    
    @State var counter: Int = 0
    
    var body: some View {
        VStack {
            Text("Contador: \(self.counter)")
            Button {
                self.counter += 1
            } label: {
                Text("Aumentar")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }.padding(30)
    }
}

#Preview {
    ButtonPractice()
}
