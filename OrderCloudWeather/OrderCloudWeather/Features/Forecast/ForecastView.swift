//
//  ForecastView.swift
//  OrderCloudWeather
//
//  Created by Tariq Patel on 2024/02/16.
//

import SwiftUI

struct ForecastView: View {
    
    @StateObject var forecastViewModel = ForecastViewModel()
    
    var body: some View {
        Text(String(forecastViewModel.weather.current.clouds))
    }
}

#Preview {
    ForecastView()
}
