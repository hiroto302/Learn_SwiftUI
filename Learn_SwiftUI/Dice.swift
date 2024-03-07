//
//  Dice.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/07.
//

import SwiftUI

struct Dice: View {
    @State private var randomNumber = 1
    @State private var timer: Timer?
    @State private var isRoling = false
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "die.face.\(randomNumber)")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width/2)
                .padding()
            Spacer()
            Button {
                playDice()
            } label: {
                Text("サイコロをふる")
                    .padding()
                    .background(Color.orange)
                    .foregroundStyle(.black)
                    .cornerRadius(10)
            }
            .disabled(isRoling)
            Spacer()
        }.padding()
    }
    
    private func playDice()
    {
        print("ボタンが押されたよ")
        isRoling = true;
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in randomNumber = Int.random(in: 1...6)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            timer?.invalidate()
            timer = nil
            isRoling = false
        }

    }
}

#Preview {
    Dice()
}
