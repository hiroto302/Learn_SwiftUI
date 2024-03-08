//
//  Grid.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/08.
//

import SwiftUI

struct Grid: View {

    var body: some View {
        VGridScrollView()
        HGridScrollView()
    }
}


struct HGridScrollView: View{

    let symbols = [
        "pencil",
        "pencil.circle",
        "pencil.slash",
        "square.and.pencil"
    ]

    let rows: [GridItem] = Array(repeating: .init(.flexible()), count: 1)

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows) {
                ForEach(symbols, id: \.self) { symbol in
                    Image(systemName: symbol)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 50)
                        .padding(20)
                        .background(.white)
                        .foregroundStyle(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 10), style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)

                }
            }
        }
        .frame(height: 130)
        .background(.gray)
        .clipShape(RoundedRectangle(cornerRadius: 10), style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
        .padding()

    }
}

struct VGridScrollView: View{

    let symbols = [
        "pencil",
        "pencil.circle",
        "pencil.slash",
        "square.and.pencil"
    ]

    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(symbols, id: \.self) { symbol in
                    Image(systemName: symbol)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding(20)
                        .background(.black)
                        .foregroundStyle(.white)
//                    .cornerRadius(10)
                        // FillStyle : デフォルトの塗りつぶしスタイル
                        .clipShape(RoundedRectangle(cornerRadius: 10), style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                }
            }
        }
        .frame(height: 200)
        .background(.gray)
        .clipShape(RoundedRectangle(cornerRadius: 10), style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
        .padding()
    }
}

#Preview {
    Grid()
}
