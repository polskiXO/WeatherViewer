//
//  ContentView.swift
//  Weather Viewer
//
//  Created by Tiệp Trần on 5/1/23.
//

import SwiftUI

/*
 
 MainView
 -> Big Weather view
 -> 5 Day Weather horizontal column view
    -> Individual Weather view (icon + avg temp)
 
 */



struct ContentView: View {
    var weatherInfos: [WeatherInfo]
    var body: some View {
        VStack (alignment: .center) {
            Spacer(minLength: 200)
            WeatherView(weatherInfo: weatherInfos[0])
                .scaleEffect(2)
                //.padding(.top, 50.0)
            Spacer()
//                NavigationLink(destination: WeatherView(weatherInfo: weatherInfos[0])) {
//                    WeatherView(weatherInfo: weatherInfos[0])
//                }.navigationTitle("In 5 days")
//
//            Spacer()
            HorizontalWeatherView(weatherInfos: weatherInfos)
        }
        .padding(.top, 20.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(weatherInfos: WeatherInfo.sampleData)
            .previewDevice("iPhone 14 Pro")
    }
}
