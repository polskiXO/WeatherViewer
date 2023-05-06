//
//  HorizontalWeatherView.swift
//  Weather Viewer
//
//  Created by Tiệp Trần on 5/1/23.
//

import SwiftUI

struct HorizontalWeatherView: View {
    var weatherInfos: [WeatherInfo]
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack (alignment: .bottom) {
                ForEach(weatherInfos) { info in
                    WeatherView(weatherInfo: info)
                        .padding(.horizontal, 10)
                }
            }
        }
    }
}

struct HorizontalWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalWeatherView(weatherInfos: WeatherInfo.sampleData)
            .previewDevice("iPhone 14 Pro")
    }
}
