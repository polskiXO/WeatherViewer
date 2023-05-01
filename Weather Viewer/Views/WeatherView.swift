//
//  WeatherView.swift
//  Weather Viewer
//
//  Created by Tiệp Trần on 5/1/23.
//

import SwiftUI

struct WeatherView: View {
    var weatherInfo: WeatherInfo
    var body: some View {
        VStack {
            weatherInfo.getWeatherVisual(desc: self.weatherInfo.desc)
                .renderingMode(.original)
                .font(.largeTitle)
                .padding(7)
                .background(.black)
                .clipShape(Circle())
            Text("\(weatherInfo.location)")
                .font(.headline)
                .fontWeight(.bold)
                .bold()
            Text("\(weatherInfo.temp)° Celcius")
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weatherInfo: WeatherInfo.sampleData[0])
            .previewDevice("iPhone 14 Pro")
    }
}
