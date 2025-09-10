//
//  CurrentWeatherView.swift
//  WeatherForecasting
//
//  Created by AM Student on 9/9/25.
//

import SwiftUI

struct CurrentWeatherView: View {
    var body: some View {
       VStack {
            Text("Current Weather")
               .font(.system(size: 36))
               .bold()
           
           HStack(spacing: 20) {
               Color.black
                   .frame(width: 100, height: 100 )
               //shift + Option + 8 = degree symbol
               VStack(alignment: .trailing) {
                   Text("Temperature °F")
                       .font(.system(size:30))
                   Text("Conditions")
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
                   Text("Wind Speed: 10 mph")
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
                   Text("Wind Direction: \nS")
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
                   Text("Humidity: \n90%")
                       .multilineTextAlignment(.center)
                       .offset(x: -10, y: 0)
                    
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
    CurrentWeatherView()
}
