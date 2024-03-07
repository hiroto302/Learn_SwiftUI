//
//  TaxCalculator.swift
//  Learn_SwiftUI
//
//  Created by hiroto taniguchi on 2024/03/07.
//

import SwiftUI

struct TaxCalculator: View {
    
    @State var inputText = ""
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("金額を入力", text: $inputText)
                .keyboardType(.numberPad)
                .foregroundStyle(.white)
            Text("価格: \(inputText)")
            Text("消費税(10%): \((Double(inputText) ?? 0) * 0.1)")
        }.background(Color.green)
    }
}

#Preview {
    TaxCalculator()
}
