//
//  ScoreManager.swift
//  SliderGameUI+Kit
//
//  Created by Влад Руденко on 26.06.2024.
//

import Foundation
import Observation

@Observable
class ScoreManager {
    static let shared = ScoreManager()
    
    var score = Score()
    
    var isShowAlert = false
    
    var totalScores: Int {
        100 - abs(score.targetValue - lround(score.currentValue))
    }
    
    var alpha: Double {
        Double(totalScores) / 100
    }
    
    func showAlert() {
        isShowAlert.toggle()
    }
    
    func startGameAgain() {
        score.targetValue = Int.random(in: 0...100)
        score.currentValue = Double.random(in: 0...100)
    }
    
}
