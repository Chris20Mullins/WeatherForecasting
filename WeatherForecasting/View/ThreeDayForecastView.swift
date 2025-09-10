//
//  ThreeDayForecastView.swift
//  WeatherForecasting
//
//  Created by AM Student on 9/9/25.
//

import SwiftUI

struct ThreeDayForecastView: View {
    var body: some View {
        HStack{
            Text("Day")
            Spacer()
            Text("High : 98°F")
            Spacer()
            Text("Low : 70°F")
            Spacer()
            Image(systemName: "sun.max.fill")
        }
        
        .foregroundColor(.black)
        
        .padding(.horizontal, 20)
        .padding(.vertical, 15)
        
        .background(RoundedRectangle(cornerRadius:5).fill(LinearGradient(gradient:Gradient(colors:[Color.black.opacity(0.4), Color.red.opacity(0.4)]), startPoint: .topLeading, endPoint: .bottomTrailing)).opacity(0.4))
        .shadow(color: Color.black.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.red.opacity(0.2), radius: 2, x: 2, y: 2)
    }
}
#Preview {
    ThreeDayForecastView()
}
