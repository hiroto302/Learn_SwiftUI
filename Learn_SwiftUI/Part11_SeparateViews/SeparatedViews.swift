//
//  SeparatedViews.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/08.
//

import SwiftUI

struct SeparatedViews: View {
    var body: some View {
        HeadView()
        FootView()
    }
}

struct HeadView: View{
    var body: some View {
        ZStack {
            RectangleView(color: .gray, width: 200, height: 50)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .modifier(CustomTextModiFier(backgroundColor: .red))
        }
    }
}

struct FootView: View {
    var body: some View{
        ZStack{
            RectangleView(color: .green, width: 100, height: 30)
        }
    }
}

struct RectangleView: View {
    let color: Color
    let width: CGFloat
    let height: CGFloat

    var body: some View {
        Rectangle()
            .foregroundStyle(color)
            .frame(width: width, height: height)
    }
}

struct CustomTextModiFier: ViewModifier {

    let backgroundColor: Color

    func body(content: Content) -> some View {
        content
            .padding()
            .background(backgroundColor)
            .font(.title)
    }
}

#Preview {
    SeparatedViews()
}
