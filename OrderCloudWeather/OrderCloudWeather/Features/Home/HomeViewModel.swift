//
//  HomeViewModel.swift
//  OrderCloudWeather
//
//  Created by Tariq Patel on 2024/02/16.
//

import Foundation
import SwiftUI
import CoreLocation

final class WeatherViewModel: ObservableObject {
    
    @Published var weather = WeatherResponse.empty()
    
    @Published var city = Constants.Strings.city {
        didSet {
            createWeatherURL(LocationHelper.getLocation(city))
        }
    }

    init() {
        createWeatherURL(LocationHelper.getLocation(city))
    }
    
    private func createWeatherURL(_ coordinates: CLLocationCoordinate2D?) {
        var urlString = ""
        if let coordinates = coordinates {
            urlString = getCurrentWeatherURL(latitude: coordinates.latitude, longitude: coordinates.longitude)
        } else {
            urlString = getCurrentWeatherURL(latitude: 53.9, longitude: 27.5667)
        }
        getWeather(city: city, for: urlString)
    }
    
    func getCurrentWeatherURL(latitude: Double, longitude: Double) -> String {
        let baseURL = Constants.Strings.url
        let key = Constants.Strings.keyAPI
        let excludeFields = "minutely"
        return "\(baseURL)/onecall?lat=\(latitude)&lon=\(longitude)&appid=\(key)&exclude=\(excludeFields)&units=metric"
    }
    
    private func getWeather(city: String, for urlString: String) {
        guard let url = URL(string: urlString) else {return}
        WeatherService<WeatherResponse>.fetchWeather(for: url) { (result) in
            switch result {
                case .success(let response):
                    DispatchQueue.main.async {
                        self.weather = response
                    }
                case .failure(let error):
                    print(error)
            }
        }
    }
    
    var temperature: String {
        return Formatter.formatTemp(weather.current.temp)
    }

}


