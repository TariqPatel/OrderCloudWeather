//
//  Formatter.swift
//  OrderCloudWeather
//
//  Created by Tariq Patel on 2024/02/16.
//

import Foundation

struct Formatter {
    
    public static func formatTemp(_ temp: Double) -> String {
        return String(format: "%1.0f", temp)
    }
}
