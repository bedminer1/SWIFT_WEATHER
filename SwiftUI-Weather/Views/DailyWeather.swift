//
//  DailyWeather.swift
//  SwiftUI-Weather
//
//  Created by Alex on 2/3/25.
//

import SwiftUI

struct DailyWeatherData: Hashable, Codable {
    var dayOfWeek: String
    var image: String
    var temperature: String
}

struct DailyWeather: View {
    var data: DailyWeatherData
    
    var body: some View {
        VStack(spacing: 2) {
            Text(data.dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: data.image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text(data.temperature)
                .font(.system(size: 23, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    DailyWeather(data: .init(dayOfWeek: "Monday", image: "sun.max.fill", temperature: "25°C"))
}
