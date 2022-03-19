//
//  ContentView.swift
//  Animations
//
//  Created by Andres Gutierrez on 3/18/22.
//

import SwiftUI

struct ContentView: View {
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
        .animation(.spring(), value: aPadd)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
