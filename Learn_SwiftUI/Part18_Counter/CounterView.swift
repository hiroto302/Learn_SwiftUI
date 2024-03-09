//
//  CounterView.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/09.
//

import SwiftUI

struct CounterView: View {
    @State var count = 0
    @State var isShowAlert = false

    var body: some View {
        ZStack {
//            Color.yellow
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack {
//                if count < 0 {
//                    Text("\(count)")
//                        .foregroundStyle(.red)
//                        .font(.system(size: 130, weight: .bold, design: .default))
//                } else {
//                    Text("\(count)")
//                        .foregroundStyle(.blue)
//                        .font(.system(size: 130, weight: .bold, design: .default))
//                }
                Text("\(count)")
                    .foregroundStyle(count < 0 ? .red : .blue)
                    .font(.system(size: 130, weight: .bold, design: .default))
                HStack {
                    Button {
                        count -= 1
                    } label: {
                        Text("-")
                            .frame(height: UIScreen.main.bounds.height/2.5)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
//                            .background(.red)
                            .background(Color("MinusButtonColor"))
                            .foregroundStyle(.white)
                            .font(.system(size: 130, weight: .bold, design: .default))
                            .cornerRadius(10)
                    }
                    Button {
                        count += 1
                    } label: {
                        Text("+")
                            .frame(height: UIScreen.main.bounds.height/2.5)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
//                            .background(.green)
                            .background(Color("PlusButtonColor"))
                            .foregroundStyle(.white)
                            .font(.system(size: 130, weight: .bold, design: .default))
                            .cornerRadius(10)

                    }
                }
                Spacer()
                Button {
                    isShowAlert = true
                } label: {
                    Text("リセットする")
                        .bold()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 50)
                        .background(.white)
                        .foregroundStyle(.red)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(.red, lineWidth: 1))
                }
                .alert("注意", isPresented: $isShowAlert) {
                    Button("リセットする", role: .destructive) {
                        count = 0
                    }
                    Button("キャンセル", role: .cancel) {}
                } message: {
                    Text("現在のカウントをリセットしますが、本当によろしいでしょうか")
                }
            }
            .padding()
        }
    }
}

#Preview {
    CounterView()
}
