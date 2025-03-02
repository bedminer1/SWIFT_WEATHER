//
//  DailyWeather.swift
//  SwiftUI-Weather
//
//  Created by Alex on 2/3/25.
//

import SwiftUI

struct DailyWeather: View {
    var dayOfWeek: String
    var image: String
    var temperature: String
    var body: some View {
        VStack(spacing: 2) {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text(temperature)
                .font(.system(size: 23, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    DailyWeather(dayOfWeek: "TUE", image: "cloud.sun.fill", temperature: "12°C")
}
