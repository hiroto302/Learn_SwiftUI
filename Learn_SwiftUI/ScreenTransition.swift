//
//  ScreenTransition.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/08.
//

import SwiftUI

// このView から SecondView へ遷移する仕組みを実装
struct ScreenTransition: View {
    @State var isShowSecondView = false
    
    var body: some View {
        NavigationStack {
            VStack {
                // ナビ遷移の実装
                NavigationLink {
                    SecondView()
                } label: {
                    Text("SecondViewへナビ遷移")
                }
                
                // モーダル遷移の実装
                Button("SecondViewへモーダル遷移") {
                    isShowSecondView = true;
                }
                .padding()
                // sheet : 指定した bool 値が true になった時、遷移する
//                .sheet(isPresented: $isShowSecondView, content: {
                .fullScreenCover(isPresented: $isShowSecondView, content: {
                    SecondView()
                        .presentationDetents([.medium])
                })
                
            }
            .padding()
            .navigationTitle("First View")
        }
    }
}

#Preview {
    ScreenTransition()
}
