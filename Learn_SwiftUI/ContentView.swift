//
//  ContentView.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/07.
//

import SwiftUI

struct ContentView: View {
    
    @State var count = 0
    @State var isShownSecondContentView = false

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text("Counter: \(count)")
                .padding()
            Button {
                isShownSecondContentView = true
            } label: {
                Text("SecondContentViewへ遷移")
            }
            .sheet(isPresented: $isShownSecondContentView) {
                SecondContentView(contentView2Count: $count)
            }

        }
        .padding()
        .font(.title)

    }
}

#Preview {
    ContentView()
}
