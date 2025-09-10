//
//  SearchHeaderView.swift
//  WeatherForecasting
//
//  Created by AM Student on 9/9/25.
//

import SwiftUI

struct SearchHeaderView: View {
    @State private var cityName = "Tulsa"
    var body: some View {
        HStack {
                    Image(systemName: "magnifyingglass")
                        .padding(.leading, 10)
                    
                    ZStack {
                        // Let's you write the city name, binds the text to the cityName variable.
                        TextField("Search city", text: $cityName)
                            .padding(.leading, 10)
                    }
                    
                    Image(systemName: "location.fill")
                        .padding(.leading, 5)
                    
                }
                
                .foregroundStyle(.black)
                .padding()
                
                .background(ZStack(alignment: .leading) { RoundedRectangle(cornerRadius: 10)
                        .fill(Color.red.opacity(0.3))
                        .shadow(color: Color.black.opacity(0.1), radius: 2, x: -2, y: -2)
                        .shadow(color: Color.black.opacity(0.1), radius: 2, x: 2, y: 2)
                })
    }
}

#Preview {
    SearchHeaderView()
}
