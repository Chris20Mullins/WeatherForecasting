//
//  WeatherViewModel.swift
//  WeatherForecasting
//
//  Created by AM Student on 10/24/25.
//

import Foundation
import Combine

class WeatherViewModel: ObservableObject {
    
    @Published var weatherResponse: WeatherResponse?
    
    @Published var errorMessage: String?
    
    private var cancellable: AnyCancellable?
    
    private let apiKey = "dc7a00bf3bd9417594b150115252210"
    
    private let defaultCity = "Tulsa"
    
    init() {
        
        fetchWeather(for: defaultCity)
        
    }
    
    func fetchWeather(for cityName: String) {
        
        let urlString = "https://api.weatherapi.com/v1/forecast.json?key=\(apiKey)&q=\(cityName)&days=3"
        
        
        guard let url = URL(string: urlString) else {
            errorMessage = "Invalid city name"
            return
        }
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .handleEvents(receiveOutput: {data in
                
                if let jsonString = String(data: data, encoding: .utf8) {
                    print("Raw JSON response: \(jsonString)")
                }
                
            })
            .decode(type: WeatherResponse.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion:  { completion in
                switch completion {
                case .failure(let error):
                    self.errorMessage = "Error fetching weather data: \(error.localizedDescription)"
                    print("Error: \(error)")
                case .finished:
                    break
                    
                }
            }, receiveValue: { response in
                print("Weather respone: \(response)")
                self.weatherResponse = response
                self.errorMessage = nil
            })
    }
    
}
