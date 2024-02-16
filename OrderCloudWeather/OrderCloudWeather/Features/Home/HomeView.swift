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
        VStack(spacing: 20) {
            Text("Current Weather")
            List {
                HStack{
                    Text("Current temperature:")
                    Spacer()
                    Text("\(homeViewModel.temperature)°C")
                }
                HStack{
                    Text("Weather condition:")
                    Spacer()
                    Text(homeViewModel.weatherCondition)
                }
                HStack{
                    Spacer()
                    ImageHelper.getWeatherIconFor(icon: homeViewModel.weatherIcon)
                        .resizable()
                        .scaledToFill()
                        .frame(width: (CGFloat(3)*40),
                               height: (CGFloat(3)*40),
                               alignment: .center)
                    Spacer()
                }
            }
            Text("View the weather for week by clicking the below button")
                .multilineTextAlignment(.center)
            Button("View") {
                print("Button tapped!")
            }.buttonStyle(.borderedProminent)
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}
