//
//  ForecastViewModel.swift
//  OrderCloudWeather
//
//  Created by Tariq Patel on 2024/02/16.
//

import Foundation

final class ForecastViewModel: ObservableObject {
    @Published var weather = WeatherResponse.empty()
    
    init(weather: WeatherResponse = WeatherResponse.empty()) {
        self.weather = weather
    }
}
