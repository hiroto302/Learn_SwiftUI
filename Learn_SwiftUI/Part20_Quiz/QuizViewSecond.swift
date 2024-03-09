//
//  QuizView.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/09.
//

import SwiftUI

struct QuizViewSecond: View {
    @State var judgeImageName = "circlebadge"
    @State var judgeImageColor = Color.red
    @State var isShowJudgeImage = false

    let choice = ["かめ", "うさぎ", "うし", "キリン"]
    let answer = "うし"

    var body: some View {
        ZStack{
            VStack {
                Text("第1問")
                    .font(.largeTitle)
                    .padding()
                Text("帽子の中に入っている動物は何？")
                    .font(.title)
                    .padding()
                Spacer()
                ForEach(0..<choice.count, id: \.self) {num in
                    Button {
                        choiceButtonAction(selectAnswer: choice[num])
                    } label: {
                        Text(choice[num])
                            .padding()
                            .frame(width: UIScreen.main.bounds.width * 0.9)
                            .background(.green)
                            .foregroundStyle(.white)
                            .padding(5)
                    }
                }

            }
            .padding()
            if isShowJudgeImage {
                Image(systemName: judgeImageName)
                    .foregroundStyle(judgeImageColor)
                    .font(.system(size: 300, weight: .bold))
            }
        }
    }
    

    func choiceButtonAction(selectAnswer: String) {
        isShowJudgeImage = true
        judgeImageName = selectAnswer == answer ? "circlebadge" : "multiply"
        judgeImageColor = selectAnswer == answer ? .red : .blue
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            isShowJudgeImage = false
        }
    }
}

#Preview {
    QuizViewSecond()
}
