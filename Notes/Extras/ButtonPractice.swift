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
        Button("Aumentar") {
            self.counter += 1
            print("El boton esta funcionando: \(self.counter)")
        }
    }
}

#Preview {
    ButtonPractice()
}
