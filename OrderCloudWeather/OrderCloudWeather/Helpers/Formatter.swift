//
//  Formatter.swift
//  OrderCloudWeather
//
//  Created by Tariq Patel on 2024/02/16.
//

import Foundation

struct Formatter {
    
    public static func temperature(_ weather: WeatherResponse) -> String {
        return String(format: "%1.0f", weather.current.temp)
    }
    
    public static func weatherCondition(_ weather: WeatherResponse) -> String {
        return weather.current.weather.first?.main ?? ""
    }
    
    public static func weatherIcon(_ weather: WeatherResponse) -> String {
        return weather.current.weather.first?.icon ?? "moon"
    }
}
