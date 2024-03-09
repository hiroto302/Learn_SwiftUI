//
//  ObservedObject_FirstView.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/08.
//

import SwiftUI

class Pets: ObservableObject {
    @Published var name = ""
    @Published var age = ""
}

struct EnvironmentObject_FirstView: View {

    @StateObject var pets = Pets()
    @State var isShowSecondView = false


    var body: some View {
        VStack {
            Text("ペット情報を入力")
            TextField("名前", text: $pets.name)
            TextField("年齢", text: $pets.age)
            Button("決定") {
                isShowSecondView = true;
            }
            .sheet(isPresented: $isShowSecondView) {
                EnvironmentObject_SecondView()
            }
        }
        .textFieldStyle(.roundedBorder)
        .padding()
    }
}

#Preview {
    ObservedObject_FirstView()
}
