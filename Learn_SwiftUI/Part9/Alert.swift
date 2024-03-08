//
//  Alert.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/08.
//

import SwiftUI

struct Alert: View {

    @State var isShownAlert = false

    var body: some View {
        VStack {
            Button("Alert") {
                isShownAlert = true
            }
            .padding()
        }
        .padding()
        .alert("本当に削除しますか?", isPresented: $isShownAlert) {
            Button("削除する", role: .destructive){
                // Ok処理
            }
            Button("キャンセル", role: .cancel) {
                // キャンセル処理
            }
        } message: {
            Text("一度削除したら戻せません")
        }
    }
}

#Preview {
    Alert()
}
