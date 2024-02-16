//
//  NetworkErrorEnum.swift
//  OrderCloudWeather
//
//  Created by Tariq Patel on 2024/02/16.
//

import Foundation

enum NetworkError: Error {
    case error(error: String)
    case dataInvalid
    case responseInvalid
    case errorDecoding(error: String)
}
