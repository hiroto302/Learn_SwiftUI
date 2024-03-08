//
//  ObservedObject_SecondView.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/08.
//

import SwiftUI

struct ObservedObject_SecondView: View {

    @ObservedObject var pet: Pet

    var body: some View {
        VStack {
            Text("入力情報")
            Text("名前: \(pet.name)")
            Text("年齢: \(pet.age)")
        }
    }
}

#Preview {
    ObservedObject_SecondView(pet: Pet())
}
