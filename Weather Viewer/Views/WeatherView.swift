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
        VStack (alignment: .center) {
            // make the black circle become a black outline
            weatherInfo.getWeatherVisual(desc: self.weatherInfo.desc)
                .renderingMode(.original)
                .font(.largeTitle)
                .padding(8)
                .background(.black)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 2)) // add black outline to the circle
                .shadow(radius: 7) // add shadow to the circle
            Text("\(weatherInfo.location)")
                .font(.headline)
                .fontWeight(.bold)
                .bold()
            Text("\(weatherInfo.temp)° Celsius")
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weatherInfo: WeatherInfo.sampleData[0])
            .previewDevice("iPhone 14 Pro")
    }
}
