//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Alex on 2/3/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var weatherData: [DailyWeatherData] = [
        .init(dayOfWeek: "MON", image: "cloud.sun.fill", temperature: "13°"),
        .init(dayOfWeek: "TUE", image: "cloud.sun.fill", temperature: "12°"),
        .init(dayOfWeek: "WED", image: "sun.max.fill", temperature: "14°"),
        .init(dayOfWeek: "THU", image: "cloud.fill", temperature: "11°"),
        .init(dayOfWeek: "FRI", image: "wind", temperature: "10°"),
    ]
    
    var body: some View {
        ZStack {
            Background(isNight: $isNight)
            
            VStack {
                CityText(cityName: "Cupertino, CA")
                MainWeatherStatus(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: "76°")

                HStack(spacing: 14) {
                    ForEach (weatherData, id: \.self) { weather in
                        DailyWeather(data: weather)
                    }
                }
                
                Spacer()
                
                Button {
                    print(API_KEY)
                    isNight.toggle()
                } label: {
                    WeatherButton(text: "Change Time", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

struct CityText: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatus: View {
    var imageName: String
    var temperature: String
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text(temperature)
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 60)
    }
}

struct WeatherButton: View {
    var text: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(text)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

#Preview {
    ContentView()
}
