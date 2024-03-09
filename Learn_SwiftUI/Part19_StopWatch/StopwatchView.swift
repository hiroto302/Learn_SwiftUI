//
//  StopwatchView.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/09.
//

import SwiftUI

struct StopwatchView: View {
    @State var timer: Timer? = nil
    @State var secondsElapsed: Double = 0.0

    var body: some View {
        VStack {
            Text(String(format: "%.1f", secondsElapsed))
//                .font(.system(size: 120, weight: .black))
                // 各文字が等幅のフォント。テキストがブレることなく表示される
                .font(Font(UIFont.monospacedSystemFont(ofSize: 120, weight: .black)))
            ButtonView(buttonAction: {start()}, text: "Start", color: .green)
            ButtonView(buttonAction: {stop()}, text: "Stop", color: .red)
            ButtonView(buttonAction: {reset()}, text: "Reset", color: .gray)
        }
        .padding()
    }

    func start() {
        if timer == nil {
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: {  _ in
                secondsElapsed += 0.1
            })
        }
    }

    func stop() {
        if let time = timer {
            time.invalidate()
        }
        timer = nil
    }

    func reset() {
        if let time = timer {
            time.invalidate()
        }
        timer = nil
        secondsElapsed = 0
    }
}

struct ButtonView: View {
    let buttonAction: () -> Void
    let text: String
    let color: Color

    var body: some View {
        Button {
            buttonAction()
        } label: {
            Text(text)
                .font(.largeTitle)
                .frame(width: 200)
                .foregroundStyle(.white)
                .padding()
                .background(color)
                .cornerRadius(10)
        }
    }
}

#Preview {
    StopwatchView()
}
