//
//  File.swift
//  Weather Viewer
//
//  Created by Tiệp Trần on 5/1/23.
//

import Foundation
import SwiftUI

struct WeatherInfo: Identifiable {
    let id: UUID = UUID()
    var location: String
    var temp: Int
    var desc: WeatherDesc
    
    func getWeatherVisual(desc: WeatherDesc) -> Image {
        switch desc {
        case .sunny:
            return Image(systemName: "sun.max.fill")
        case .cloudy:
            return Image(systemName: "cloud.fill")
        case .snowy:
            return Image(systemName: "cloud.snow.fill")
        case .rainny:
            return Image(systemName: "cloud.rain.fill")
        }
    }
    
    init(location: String, temp: Int, desc: WeatherDesc) {
        self.location = location
        self.temp = temp
        self.desc = desc
    }
}

extension WeatherInfo {
    static let sampleData: [WeatherInfo] = [
        WeatherInfo(location: "Cincinnati", temp: 13, desc: WeatherDesc.rainny),
        WeatherInfo(location: "New York", temp: 23, desc: WeatherDesc.sunny),
        WeatherInfo(location: "Los Angeles", temp: 25, desc: WeatherDesc.sunny),
        WeatherInfo(location: "North Dakota", temp: 3, desc: WeatherDesc.snowy)
    ]
}

