//
//  ObservedObject_SecondView.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/08.
//

import SwiftUI

struct EnvironmentObject_SecondView: View {

    @EnvironmentObject var pets: Pets

    var body: some View {
        VStack {
            Text("入力情報")
            Text("名前: \(pets.name)")
            Text("年齢: \(pets.age)")
        }
    }
}

#Preview {
    EnvironmentObject_SecondView().environmentObject(Pets())
}
