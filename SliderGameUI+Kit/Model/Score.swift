//
//  Score.swift
//  SliderGameUI+Kit
//
//  Created by Влад Руденко on 26.06.2024.
//

import Foundation

struct Score {
    var targetValue = Int.random(in: 0...100)
    var currentValue = Double.random(in: 0...100)
    
    let minimumValue = 0.0
    let maximumValue = 100
    
}
