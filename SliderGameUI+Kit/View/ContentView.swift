//
//  ContentView.swift
//  SliderGameUI+Kit
//
//  Created by Влад Руденко on 26.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var scoreManager = ScoreManager.shared
    
    var body: some View {
        VStack {
            Text("Подвиньте слайд как можно ближе к: \(scoreManager.score.targetValue)")
                .font(.callout)
        }
        SliderRepresentation(value: $scoreManager.score.currentValue, color: .red, alpha: scoreManager.alpha)
            .padding()
        ButtonsView(buttonText: "Проверь меня!", action: scoreManager.showAlert )
            .padding()
            .alert(
                "Твой Результат:",
                isPresented: $scoreManager.isShowAlert,
                actions: {}
            ) {
                Text(scoreManager.totalScores.formatted())
            }
        ButtonsView(buttonText: "Начать заново", action: scoreManager.startGameAgain )
        
    }
}

#Preview {
    ContentView()
}
