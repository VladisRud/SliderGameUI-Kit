//
//  ButtonsView.swift
//  SliderGameUI+Kit
//
//  Created by Влад Руденко on 26.06.2024.
//

import SwiftUI

struct ButtonsView: View {
    let buttonText: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(buttonText)
        }
    }
}

#Preview {
    ButtonsView(buttonText: "Проверь меня!", action: {})
}
