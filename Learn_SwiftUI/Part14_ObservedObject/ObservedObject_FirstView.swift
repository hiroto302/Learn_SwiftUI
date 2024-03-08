//
//  ObservedObject_FirstView.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/08.
//

import SwiftUI

class Pet: ObservableObject {
    @Published var name = ""
    @Published var age = ""
}

struct ObservedObject_FirstView: View {
    
    @ObservedObject var pet = Pet()
    @State var isShowSecondView = false


    var body: some View {
        VStack {
            Text("ペット情報を入力")
            TextField("名前", text: $pet.name)
            TextField("年齢", text: $pet.age)
            Button("決定") {
                isShowSecondView = true;
            }
            .sheet(isPresented: $isShowSecondView) {
                ObservedObject_SecondView(pet: pet)
            }
        }
        .textFieldStyle(.roundedBorder)
        .padding()
    }
}

#Preview {
    ObservedObject_FirstView()
}
