//
//  HomeView.swift
//  OrderCloudWeather
//
//  Created by Tariq Patel on 2024/02/16.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var weatherViewModel = WeatherViewModel()
    
    var body: some View {
        Text("\(weatherViewModel.temperature)°C")
    }
}

#Preview {
    HomeView()
}
