//
//  Weather_ViewerApp.swift
//  Weather Viewer
//
//  Created by Tiệp Trần on 5/1/23.
//

import SwiftUI

@main
struct Weather_ViewerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(weatherInfos: WeatherInfo.sampleData)
        }
    }
}
