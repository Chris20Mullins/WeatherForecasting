//
//  CurrentWeatherView.swift
//  WeatherForecasting
//
//  Created by AM Student on 9/9/25.
//

import SwiftUI
import Lottie
struct CurrentWeatherView: View {
    
    var weather: WeatherResponse?
    
    var body: some View {
        VStack {
            Text("Current Weather")
                .font(.system(size: 36))
                .bold()
            if let weather = weather {
                
                
                HStack(spacing: 20) {
                    LottieView(loopmode: .loop, animationName: weatherAnimationViewModel(for: weather.current.condition.code))
                        .frame(width: 100, height: 100)
                    //shift + Option + 8 = degree symbol
                    VStack(alignment: .trailing) {
                        Text("\(Int(round(weather.current.temp_f)))°F")
                            .font(.system(size:30))
                        Text(weather.current.condition.text)
                    }
                }
                
                .padding(.bottom, 10)
                
                HStack {
                    Spacer()
                    VStack {
                        Image(systemName: "wind")
                            .frame(width: 60, height: 60)
                            .font(.system(size: 39))
                            .foregroundColor(.red)
                            .background(.black)
                            .cornerRadius(10)
                            .offset(x: 10, y: 0)
                        Text("Wind Speed: \n\(Int(round(weather.current.wind_mph)))mph")
                            .multilineTextAlignment(.center)
                            .offset(x: 10, y: 0)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Image(systemName: "arrow.left.arrow.right")
                            .frame(width: 60, height: 60)
                            .font(.system(size: 39))
                            .foregroundColor(.red)
                            .background(.black)
                            .cornerRadius(10)
                            .offset(x: -8, y: 0)
                        Text("Wind Direction: \n\(weather.current.wind_dir)")
                            .multilineTextAlignment(.center)
                            .offset(x: -8, y: 0)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Image(systemName: "drop.fill")
                            .frame(width: 60, height: 60)
                            .font(.system(size: 45))
                            .foregroundColor(.red)
                            .background(.black)
                            .cornerRadius(10)
                            .offset(x: -10, y: 0)
                        Text("Humidity: \n\(weather.current.humidity)%")
                            .multilineTextAlignment(.center)
                            .offset(x: -10, y: 0)
                        
                    }
                }
                
            }
        }
       .foregroundColor(.black)
        
       .padding()
        
       .background(RoundedRectangle(cornerRadius:20).fill(LinearGradient(gradient:Gradient(colors:[Color.black.opacity(0.3), Color.red.opacity(0.5)]), startPoint: .top, endPoint: .bottom)).opacity(0.3))
       .shadow(color: Color.black.opacity(0.1), radius: 2, x: -2, y: -2)
       .shadow(color: Color.red.opacity(0.2), radius: 2, x: 2, y: 2)
    }
}

#Preview {
    ContentView()
}
