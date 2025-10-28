//
//  ContentView.swift
//  WeatherForecasting
//
//  Created by AM Student on 9/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = WeatherViewModel()
    @State private var cityName: String = "Tulsa"
    
    
    var body: some View {
        
       
        VStack{
            Spacer()
            SearchHeaderView(fetchWeather: { cityName in
            viewModel.fetchWeather(for: cityName)
            })
            
            if let city = viewModel.weatherResponse?.location.name {
                CityNameView(city: city)
            }
           if let errorMessasge = viewModel.errorMessage {
                Text(errorMessasge)
                   .foregroundColor(.red)
                   .padding()
            } else {
               CurrentWeatherView(weather: viewModel.weatherResponse)
           }
            if let weather = viewModel.weatherResponse {
                ThreeDayForecastView(forecast:  weather.forecast.forecastday)
            } else {
               Text("Loading Forecast....")
            }
        
            Spacer()
            
        }
        .background(RoundedRectangle(cornerRadius:5).fill(LinearGradient(gradient:Gradient(colors:[Color.black.opacity(0.4), Color.red.opacity(0.4)]), startPoint: .topLeading, endPoint: .bottomTrailing)).opacity(0.4))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
