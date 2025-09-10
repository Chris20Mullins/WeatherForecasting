//
//  CityNameView.swift
//  WeatherForecasting
//
//  Created by AM Student on 9/9/25.
//

import SwiftUI

struct CityNameView: View {
    var city: String
        var currentDate: String
    var body: some View {
        VStack {
                    Text("Tulsa")
                        .font(.largeTitle)
                        .bold(true)
                    Text("September 10th, 2025")
                        .font(.title2)
                        
                        
                }
        .background(RoundedRectangle(cornerRadius:5).fill(LinearGradient(gradient:Gradient(colors:[Color.black.opacity(0.4), Color.red.opacity(0.4)]), startPoint: .topLeading, endPoint: .bottomTrailing)).opacity(0.4))
        .shadow(color: Color.black.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.red.opacity(0.2), radius: 2, x: 2, y: 2)
    }
}

#Preview {
    CityNameView(city: "Tulsa", currentDate: "September 10th, 2025")
}
