//
//  SecondContentView.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/08.
//

import SwiftUI

struct SecondContentView: View {

    // Binding : 他のクラスの変数と同期させることができる
    @Binding var contentView2Count: Int


    var body: some View {
        
        VStack{
            Text("Hello, SecondContentView")
                .padding()
            Button("+10"){
                contentView2Count += 10
            }
        }
        .font(.title)

    }
}

#Preview {
    SecondContentView(contentView2Count: .constant(0))
}
