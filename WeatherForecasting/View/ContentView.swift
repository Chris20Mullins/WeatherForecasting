//
//  ContentView.swift
//  WeatherForecasting
//
//  Created by AM Student on 9/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
             
        VStack{
            Spacer()
            SearchHeaderView()
            CityNameView(city: "Tulsa", currentDate: "September 10, 2025")
            CurrentWeatherView()
            ThreeDayForecastView()
            ThreeDayForecastView()
            ThreeDayForecastView()
            
            Spacer()
            
        }
        .background(RoundedRectangle(cornerRadius:5).fill(LinearGradient(gradient:Gradient(colors:[Color.black.opacity(0.4), Color.red.opacity(0.4)]), startPoint: .topLeading, endPoint: .bottomTrailing)).opacity(0.4))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
