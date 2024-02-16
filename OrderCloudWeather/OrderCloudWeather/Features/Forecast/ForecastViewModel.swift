//
//  ForecastViewModel.swift
//  OrderCloudWeather
//
//  Created by Tariq Patel on 2024/02/16.
//

import Foundation

final class ForecastViewModel: ObservableObject {
    @Published var weather = WeatherResponse.empty()
    @Published var weatherFormatted = WeatherFormatted()
    
    init(weather: WeatherResponse = WeatherResponse.empty(),
         weatherFormatted: WeatherFormatted = WeatherFormatted()) {
        self.weather = weather
        self.weatherFormatted = weatherFormatted
    }
}
