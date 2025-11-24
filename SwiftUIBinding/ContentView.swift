//
//  ContentView.swift
//  SwiftUIBinding
//
//  Created by                     Nand Parikh on 24/11/25.
//

import SwiftUI
struct ContentView: View {
    
    @State private var isOn : Bool = false
    
    var body: some View {
        VStack {
            Text("Binding Demo")
                .font(.title)
                .foregroundStyle(isOn ? .green : .red)
            
            ToogleChildView(isOn: $isOn)
        }
        .padding()
    }
}

struct ToogleChildView : View {
    @Binding var isOn : Bool
    
    var body: some View {
        Toggle(isOn: $isOn) {
            Text("Toogle")
                .font(.title)
        }
    }
}


#Preview {
    ContentView()
}
