//
//  HomeView.swift
//  OrderCloudWeather
//
//  Created by Tariq Patel on 2024/02/16.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeViewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
        VStack(spacing: 20) {
            Text("Current Weather")
            List {
                HStack{
                    Text("Current temperature:")
                    Spacer()
                    Text("\(Formatter.temperature(homeViewModel.weather))°C")
                }
                HStack{
                    Text("Weather condition:")
                    Spacer()
                    Text(Formatter.weatherCondition(homeViewModel.weather))
                }
                HStack{
                    Spacer()
                    ImageHelper.getWeatherIconFor(icon: Formatter.weatherIcon(homeViewModel.weather))
                        .resizable()
                        .scaledToFill()
                        .frame(width: (CGFloat(3)*40),
                               height: (CGFloat(3)*40),
                               alignment: .center)
                    Spacer()
                }
            }
            Text("View the weather for week by clicking the below text")
                .multilineTextAlignment(.center)
            NavigationLink(destination: ForecastView(forecastViewModel: ForecastViewModel(weather: homeViewModel.weather))) {
                Text("Show Weather For The Week")
            }
            Spacer()
        }
    }
}
}

#Preview {
    HomeView()
}
