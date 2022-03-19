//
//  FirstTest.swift
//  Animations
//
//  Created by Andres Gutierrez on 3/18/22.
//

import SwiftUI

struct FirstTest: View {
    @State private var aPadd    = 1.0
    var body: some View {
        Button("Tap me"){
            aPadd += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(aPadd)
//        .animation(.spring(), value: aPadd)
//        .animation(.interpolatingSpring(stiffness: 50, damping: 1), value: aPadd)
//        .animation(.easeInOut(duration: 2), value: aPadd)
        .animation(.easeInOut(duration: 1).repeatCount(3, autoreverses: true), value: aPadd)
//        .animation(.easeInOut(duration: 2).delay(1).speed(8).repeatForever(), value: aPadd)
        
    }
}

struct FirstTest_Previews: PreviewProvider {
    static var previews: some View {
        FirstTest()
    }
}
