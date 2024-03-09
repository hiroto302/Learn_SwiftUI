//
//  QuizView.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/09.
//

import SwiftUI
import AVFoundation

struct QuizView: View {
    @State var player: AVAudioPlayer?


    var body: some View {
        VStack {
            Spacer()
            Button {
                playSound(fileName: "questions")
            } label: {
                Text("クイズ出題!")
                    .font(.largeTitle)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(.red)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }
            Spacer()
            Button {
                playSound(fileName: "thinking")
            } label: {
                Text("シンキングタイム\n(10秒)")
                    .font(.largeTitle)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(.green)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }
            Spacer()
            HStack() {
                Button {
                    playSound(fileName: "correct")
                } label: {
                    Image(systemName: "circle")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(10)
                }
                Button {
                    playSound(fileName: "incorrect")
                } label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(10)
                }
            }
            Spacer()
        }
        .padding()
    }


    func playSound(fileName: String) {
        if let soundData = NSDataAsset(name: fileName) {
            do {
                player = try AVAudioPlayer(data: soundData.data)
                player?.play()
            }
            catch {
                print("該当する音楽ファイルなし")
            }
        }
    }

}


#Preview {
    QuizView()
}
