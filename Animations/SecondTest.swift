//
//  SecondTest.swift
//  Animations
//
//  Created by Andres Gutierrez on 3/18/22.
//

import SwiftUI

struct SecondTest: View {
    @State private var aanimationNumb = 1.0
    
    var body: some View {
        Button("Tap me") {}
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(.blue)
                .scaleEffect(aanimationNumb)
                .opacity(2 - aanimationNumb)
                .animation(.easeInOut(duration: 1).repeatForever(autoreverses: false), value: aanimationNumb)
            )
        .onAppear {
            aanimationNumb += 1
        }
    }
        
}

struct SecondTest_Previews: PreviewProvider {
    static var previews: some View {
        SecondTest()
    }
}
