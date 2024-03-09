//
//  AppStorage_FirstView.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/09.
//

import SwiftUI

struct AppStorage_FirstView: View {

    // @AppStorage("key") : アプリ内にデータを保存する
    @AppStorage("menuName") var menuName = ""
    @AppStorage("memo") var memo = ""

    var body: some View {
        VStack {
            TextField("メニュー名", text: $menuName)
                .textFieldStyle(.roundedBorder)
            TextEditor(text: $memo)
                .border(.gray)
        }
    }
}

#Preview {
    AppStorage_FirstView()
}
