//
//  HomeViewModelTests.swift
//  OrderCloudWeatherTests
//
//  Created by Tariq Patel on 2024/02/16.
//

import XCTest
@testable import OrderCloudWeather

final class HomeViewModelTests: XCTestCase {
    
    private var viewModel: HomeViewModel!

    override func setUpWithError() throws {
        viewModel = HomeViewModel()
        let weather = WeatherResponse.empty()
        viewModel.weather = weather
    }

    override func tearDownWithError() throws {
        viewModel = nil
    }
    
    func testIfCityCorrect() {
        XCTAssertEqual(viewModel.cityLocation, Constants.Strings.city)
    }
}
