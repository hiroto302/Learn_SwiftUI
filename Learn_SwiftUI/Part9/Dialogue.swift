//
//  Dialogue.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/08.
//

import SwiftUI

struct Dialogue: View {

    @State var isShowDialogue = false

    var body: some View {
        VStack {
            Button("Dialogue") {
                isShowDialogue = true
            }
        }
        .padding()
        .confirmationDialog("Title", isPresented: $isShowDialogue, titleVisibility: .visible) {
            Button("選択肢1") {

            }
            Button("選択肢2") {

            }
            Button("選択肢3") {

            }
            Button("キャンセル", role: .cancel) {

            }
        } message: {
            Text("ここにメッセージ")
        }
    }
}

#Preview {
    Dialogue()
}
