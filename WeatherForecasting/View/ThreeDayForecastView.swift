//
//  ThreeDayForecastView.swift
//  WeatherForecasting
//
//  Created by AM Student on 9/9/25.
//

import SwiftUI

struct ThreeDayForecastView: View {
    
    var forecast: [ForecastDay]
    
    var body: some View {
        
        LazyVStack {
            ForEach(forecast.prefix(3), id: \.date) { forecastDay in
                dailyCell(forecastDay: forecastDay)
            }
        }
        
    }
        
        private func dailyCell(forecastDay: ForecastDay) -> some View {
            
        
        
        HStack{
            Text(dayOfWeek(for: forecastDay.date))
            Spacer()
            Text("High : \(Int(round(forecastDay.day.maxtemp_f)))F")
            Spacer()
            Text("Low : \(Int(round(forecastDay.day.mintemp_f)))F")
            Spacer()
            Image(systemName: weatherIconViewModel(for: forecastDay.day.condition.code))
        }
        
        .foregroundColor(.black)
        
        .padding(.horizontal, 20)
        .padding(.vertical, 15)
        
        .background(RoundedRectangle(cornerRadius:5).fill(LinearGradient(gradient:Gradient(colors:[Color.black.opacity(0.4), Color.red.opacity(0.4)]), startPoint: .topLeading, endPoint: .bottomTrailing)).opacity(0.4))
        .shadow(color: Color.black.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.red.opacity(0.2), radius: 2, x: 2, y: 2)
    }
    //Converts a date string format ("yyyy-MM-dd") to the corresponding day of the week ("EEEE").
    private func dayOfWeek(for dateString: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        guard let date = dateFormatter.date(from: dateString) else {
            return "Unknown"
        }
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: date)
        }
    }

//#Preview {
//    ThreeDayForecastView()
//}
