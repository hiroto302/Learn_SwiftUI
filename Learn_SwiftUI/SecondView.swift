//
//  SecondView.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/08.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            Text("SecondView")
        }
    }
}

#Preview {
    SecondView()
}
