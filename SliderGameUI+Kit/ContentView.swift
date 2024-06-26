//
//  ContentView.swift
//  SliderGameUI+Kit
//
//  Created by Влад Руденко on 26.06.2024.
//

import SwiftUI

struct ContentView: View {
    private var score = 0
    
    var body: some View {
        VStack {
            Text("Подвиньте слайд как можно ближе к: \(score)")
                .font(.callout)
        }
        .padding()
        
        ButtonsView(buttonText: "Проверь меня!", action: {})
            .padding()
        ButtonsView(buttonText: "Начать заново", action: {})
    }
}

#Preview {
    ContentView()
}
