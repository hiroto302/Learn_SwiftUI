//
//  Objects.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/07.
//

import SwiftUI


/* 一部のオブジェクト と モディファイア 使用例を記述
    モディファイア : オブジェクトに対して色々なカスタマイズができるコードのこと
    モディファイアのルール : 上から実行される。同じ modifier がある場合は上の方が優先される
 */
struct Objects: View {
    @State var inputText = ""
    @State var isOn = true
    
    var body: some View {
        VStack{
            // 円
//            Circle()
//                .foregroundStyle(.red)
            
            // List : データを一覧で表示するオブジェクト
            List {
                Text("Apple")
                    .padding()
                    .foregroundColor(.red)
                    .background(Color.green)
                    .clipShape(Circle())
                    .font(.title)
                    .shadow(radius: 10)
                Text("Orange")
                    .foregroundStyle(.orange)
                    .foregroundStyle(.red)
            }
            
            // systemeName : Apple がアイコンを用意してくれている
            // 用意してくれているものを確認するには command + shift + L
            // または、画面右上の +ボタンから シンボルを確認する
            Image(systemName: "car")
            
            // 自前で用意する時, 画像ファイルを Assets に格納する
            // ファイル形式 : .jpg or .png
            
//            Image("Bonfire_Icon_0_ok")
//                .imageScale(.small)
            
            
            // IOS で入力しよとした時、スマホ画面上にキーボードが出現する
            // レイアウトが崩れていないか Simulator で確認することが大事
            TextField("ここに文字を入力", text : $inputText)
            
            Toggle("Swich", isOn: $isOn)
            

        }
        
    }
}

#Preview {
    Objects()
}
