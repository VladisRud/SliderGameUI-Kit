//
//  SliderRepresentation.swift
//  SliderGameUI+Kit
//
//  Created by Влад Руденко on 26.06.2024.
//

import SwiftUI

struct SliderRepresentation: UIViewRepresentable {
    let scoreManager = ScoreManager.shared
    
    @Binding var value: Double
    
    let color: UIColor
    var alpha: Double
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.minimumValue = Float(scoreManager.score.minimumValue)
        slider.maximumValue = Float(scoreManager.score.maximumValue)
        
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.valueChange),
            for: .valueChanged
        )
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(value)
        uiView.thumbTintColor = color.withAlphaComponent(alpha)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(value: $value)
    }
    
}

extension SliderRepresentation {
    class Coordinator: NSObject {
        @Binding var value: Double
        
        init(value: Binding<Double>) {
            self._value = value
        }
        
        @objc func valueChange(_ sender: UISlider) {
            value = Double(sender.value)
        }
    }
}

#Preview {
    SliderRepresentation(value: .constant(50), color: .red, alpha: 0.5)
}
