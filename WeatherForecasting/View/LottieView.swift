//
//  LottieView.swift
//  WeatherForecasting
//
//  Created by AM Student on 10/24/25.
//

import Foundation
import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    
   
    
    
    let loopmode: LottieLoopMode
    let animationName: String
    
    func updateUIView(_ uiView: Lottie.LottieAnimationView, context: Context) {
        uiView.animation = LottieAnimation.named(animationName)
        uiView.play()
    }
    
    func makeUIView(context: Context) -> LottieAnimationView {
        let animationView = LottieAnimationView(name: animationName)
        animationView.play()
        animationView.loopMode = loopmode
        animationView.contentMode = .scaleAspectFit
        return animationView
    }
}
#Preview {
    LottieView(loopmode: .loop, animationName: "dayClearSky")
 }
